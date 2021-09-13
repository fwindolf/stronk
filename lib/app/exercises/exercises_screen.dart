import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/exercises/exercise_item_widget.dart';

import 'package:stronk/controllers/exercise_controller.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/app/drawer/default_drawer.dart';
import 'package:stronk/routing/app_router.dart';

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

  Widget _buildContent(List<Exercise> exercises) {
    final exercisesByRegion = <MuscleRegion, List<Exercise>>{};
    exercises.forEach((exercise) {
      exercise.muscles.forEach((muscle) {
        if (muscle.region == null) return;

        if (exercisesByRegion.containsKey(muscle.region)) {
          exercisesByRegion[muscle.region!]!.add(exercise);
        } else {
          exercisesByRegion[muscle.region!] = [exercise];
        }
      });
    });
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ProviderScope(
          child: const ExerciseItem(),
          overrides: [],
        );
      },
      itemCount: exercisesByRegion.length,
    );
  }

  Widget _buildEmpty(WidgetRef ref) {
    final filter = ref.watch(exerciseSourceFilterProvider).state;

    var text = "Something went wrong fetching the exercises... ";
    var icon = Icon(Icons.warning, color: Colors.yellow);
    if (filter == ExerciseFilter.onlyUser) {
      text = "There are no user-defined exercises, create one!";
      icon = Icon(Icons.info, color: Colors.lightBlue);
    }

    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 1,
        child: ListTile(
          leading: icon,
          title: Text(text),
          dense: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercises = ref.watch(exerciseListControllerProvider);

    return exercises.when(
      data: (exercises) => _buildContent(exercises),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => _buildEmpty(ref),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed(AppRoutes.exerciseEdit),
      ),
    );
  }
}
