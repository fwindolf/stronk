import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/exercise_controller.dart';
import 'package:stronk/models/exercise/exercise.dart';

import 'package:stronk/routing/app_router.dart';

import 'package:stronk/app/common_widgets/user_overview_widget.dart';

import 'package:stronk/app/drawer/default_drawer.dart';

class ExerciseSourceFilterWidget extends HookConsumerWidget {
  const ExerciseSourceFilterWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      onSelected: (ExerciseFilter selected) =>
          ref.read(exerciseSourceFilterProvider).state = selected,
      itemBuilder: (_) => [
        const PopupMenuItem(child: Text("Only User Exercises"), value: ExerciseFilter.onlyUser),
        const PopupMenuItem(child: Text("Only Preset Exercises"), value: ExerciseFilter.onlyPreset),
        const PopupMenuItem(child: Text("Show All"), value: ExerciseFilter.all),
      ],
    );
  }
}

class ExercisesList extends ConsumerWidget {
  const ExercisesList();

  void _buildContent(List<Exercise> exercises, WidgetRef ref) {
    return ListView.builder(itemBuilder: (ctx, index))
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(exerciseListControllerProvider);

    return exercises.when(
      data: (exercises) => _buildContent(exercises, ref),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: Text("An error occured: ${error.toString()}"),
      ),
    );
  }
}

class ExerciseScreen extends StatelessWidget {
  /// The excercise screen shows a list of all the exercises, grouped by
  /// the muscles. It features a filter in the appbar that lets the user
  /// show all or just their custom exercises.
  ///
  /// There is also a filter for tags, muscles and/or regions.
  ///
  /// It provides access to the standard drawer, that lets the user
  /// access all parts of the app directly, as well as logging them out.
  ///
  /// There is also a link to the settings screen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stronk"),
        actions: [
          const ExerciseSourceFilterWidget(),
        ],
      ),
      drawer: DefaultDrawer(),
      body: Column(
        children: <Widget>[
          const ExercisesList(),
        ],
      ),
    );
  }
}
