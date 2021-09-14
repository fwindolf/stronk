import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/tag_widgets.dart';
import 'package:stronk/controllers/muscle_controller.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/repositories/muscle_repository.dart';

import 'package:stronk/util/validation.dart';

class MuscleField extends ConsumerWidget {
  final ValidationItem<List<Muscle>> state;
  final Function(List<Muscle>?) updateState;

  MuscleField({required this.state, required this.updateState});

  bool _contains(List<Muscle> muscles, Muscle muscle) {
    return muscles.where((el) => muscle.name == el.name).isNotEmpty;
  }

  void _createMuscle(Muscle muscle, WidgetRef ref) {
    print("Create muscle ${muscle.name}");
    // Create if not exists, add to created
    final user = ref.read(authControllerProvider);
    if (user != null) {
      print("Creating muscle on repo ${muscle.name}");
      ref.read(muscleRepositoryProvider).create(userId: user.uid, muscle: muscle);
      _activateMuscle(muscle);
      ref.read(muscleListControllerProvider.notifier).retrieveItems();
    }
  }

  void _activateMuscle(Muscle muscle) {
    print("Activate muscle ${muscle.name}");
    // Add to active it it was
    if (!(state.value?.contains(muscle) ?? false)) {
      updateState(List<Muscle>.from(state.value ?? [])..add(muscle));
    }
  }

  void _deactivateMuscle(Muscle muscle) {
    print("Deactivate muscle ${muscle.name}");
    // Remove from active it it was
    if (state.value?.contains(muscle) ?? false) {
      updateState(List<Muscle>.from(state.value ?? [])..remove(muscle));
    }
  }

  void _deleteMuscle(Muscle muscle, WidgetRef ref) {
    print("Delete muscle ${muscle.name}");
    _deactivateMuscle(muscle);

    // Delete if exists, add to deleted
    final user = ref.read(authControllerProvider);
    if (user != null) {
      print("Deleting muscle on repo ${muscle.name}");
      ref.read(muscleRepositoryProvider).delete(userId: user.uid, muscleId: muscle.id!);
      ref.read(muscleListControllerProvider.notifier).retrieveItems();
    }
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, [List<Muscle>? muscles]) {
    // We save our active selection in the state, and our available we get from the database
    final active = state.value ?? [];
    final available = muscles ?? [];
    final inactive = available.whereNot((el) => active.map((el) => el.name).contains(el.name));

    final activeWidgets = active.map(
      (muscle) => TagWidget(
        name: muscle.name,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        icon: Icon(Icons.cancel_outlined),
        onHold: () => _deleteMuscle(muscle, ref),
        onAction: () => _deactivateMuscle(muscle),
      ),
    );

    final inactiveWidgets = inactive.map(
      (muscle) => TagWidget(
        name: muscle.name,
        color: Colors.grey,
        backgroundColor: Colors.grey.withOpacity(0.1),
        icon: Icon(Icons.add_outlined),
        onHold: () => _deleteMuscle(muscle, ref),
        onAction: () => _activateMuscle(muscle),
      ),
    );

    var widgets = <Widget>[];
    widgets
      ..addAll(activeWidgets)
      ..addAll(inactiveWidgets);

    return Wrap(
      children: widgets,
      spacing: 5.0,
      runSpacing: 5.0,
      runAlignment: WrapAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableMuscles = ref.watch(muscleListControllerProvider);

    return availableMuscles.when(data: (muscles) {
      print("New data ${muscles.map((el) => el.name).toList()}");
      return _buildContent(context, ref, muscles);
    }, loading: () {
      print("Loading");
      return _buildContent(context, ref);
    }, error: (error, _) {
      print("Error");
      return _buildContent(context, ref);
    });
  }
}
