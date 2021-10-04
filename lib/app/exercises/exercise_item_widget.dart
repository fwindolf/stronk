import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/routing/app_router.dart';

final exerciseItemProvider = Provider<Exercise>((_) => throw UnimplementedError());

class ExerciseItem extends ConsumerWidget {
  const ExerciseItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authControllerProvider).maybeWhen(
          data: (user) => user,
          orElse: () => null,
        );
    final exercise = ref.watch(exerciseItemProvider);

    return ListTile(
      title: Text(
        exercise.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      trailing: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.exerciseProgression,
                arguments: exercise,
              );
            },
            icon: Icon(Icons.show_chart_outlined),
            tooltip: "Show progression",
          ),
          IconButton(
            onPressed: () {
              if (!exercise.belongsTo(user)) {
                Navigator.of(context).pushNamed(
                  AppRoutes.exerciseEdit,
                  arguments: exercise.copyWith(creator: user?.uid),
                );
              } else {
                Navigator.of(context).pushNamed(
                  AppRoutes.exerciseEdit,
                  arguments: exercise,
                );
              }
            },
            icon: Icon(Icons.edit),
            tooltip: "Edit exercise",
          ),
          IconButton(
            onPressed: () {
              if (!exercise.belongsTo(user)) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Can not delete predefined exercises!"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            icon: Icon(Icons.delete_outline),
            tooltip: "Delete exercise permanently",
          ),
        ],
      ),
    );
  }
}
