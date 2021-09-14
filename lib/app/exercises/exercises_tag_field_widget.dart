import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/tag_widgets.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';
import 'package:stronk/controllers/exercise_tag_controller.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/repositories/exercise_tag_repository.dart';

import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/util/validation.dart';

class ExercisesTagField extends ConsumerWidget {
  final ValidationItem<List<ExerciseTag>> state;
  final Function(List<ExerciseTag>?) updateState;

  ExercisesTagField({required this.state, required this.updateState});

  bool _contains(List<ExerciseTag> tags, ExerciseTag tag) {
    return tags.where((el) => tag.name == el.name).isNotEmpty;
  }

  void _createTag(ExerciseTag tag, WidgetRef ref) {
    print("Create tag ${tag.name}");
    // Create if not exists, add to created
    final user = ref.read(authControllerProvider);
    if (user != null) {
      print("Creating tag on repo ${tag.name}");
      ref.read(exerciseTagRepositoryProvider).create(userId: user.uid, tag: tag);
      _activateTag(tag);
      ref.read(exerciseTagListControllerProvider.notifier).retrieveItems();
    }
  }

  void _activateTag(ExerciseTag tag) {
    print("Activate tag ${tag.name}");
    // Add to active it it was
    if (!(state.value?.contains(tag) ?? false)) {
      updateState(List<ExerciseTag>.from(state.value ?? [])..add(tag));
    }
  }

  void _deactivateTag(ExerciseTag tag) {
    print("Deactivate tag ${tag.name}");
    // Remove from active it it was
    if (state.value?.contains(tag) ?? false) {
      updateState(List<ExerciseTag>.from(state.value ?? [])..remove(tag));
    }
  }

  void _deleteTag(ExerciseTag tag, WidgetRef ref) {
    print("Delete tag ${tag.name}");
    _deactivateTag(tag);

    // Delete if exists, add to deleted
    final user = ref.read(authControllerProvider);
    if (user != null) {
      print("Deleting tag on repo ${tag.name}");
      ref.read(exerciseTagRepositoryProvider).delete(userId: user.uid, tagId: tag.id!);
      ref.read(exerciseTagListControllerProvider.notifier).retrieveItems();
    }
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, [List<ExerciseTag>? tags]) {
    // We save our active selection in the state, and our available we get from the database
    final active = state.value ?? [];
    final available = tags ?? [];
    final inactive = available.whereNot((el) => active.map((el) => el.name).contains(el.name));

    final activeWidgets = active.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        icon: Icon(Icons.cancel_outlined),
        onHold: () => _deleteTag(tag, ref),
        onAction: () => _deactivateTag(tag),
      ),
    );

    final inactiveWidgets = inactive.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Colors.grey,
        backgroundColor: Colors.grey.withOpacity(0.1),
        icon: Icon(Icons.add_outlined),
        onHold: () => _deleteTag(tag, ref),
        onAction: () => _activateTag(tag),
      ),
    );

    var widgets = <Widget>[];
    widgets
      ..addAll(activeWidgets)
      ..addAll(inactiveWidgets)
      ..add(EditableTagWidget((String name) => _createTag(ExerciseTag(name: name), ref)));

    return Wrap(
      children: widgets,
      spacing: 5.0,
      runSpacing: 5.0,
      runAlignment: WrapAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableTags = ref.watch(exerciseTagListControllerProvider);

    return availableTags.when(data: (tags) {
      print("New data ${tags.map((el) => el.name).toList()}");
      return _buildContent(context, ref, tags);
    }, loading: () {
      print("Loading");
      return _buildContent(context, ref);
    }, error: (error, _) {
      print("Error");
      return _buildContent(context, ref);
    });
  }
}
