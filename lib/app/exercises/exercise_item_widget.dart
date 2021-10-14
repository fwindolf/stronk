import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/routing/app_router.dart';

final exerciseProvider = Provider<Exercise>((_) => throw UnimplementedError());

class ExerciseItemActionButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final Function() onPressed;

  const ExerciseItemActionButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
        ),
        padding: const EdgeInsets.all(0.0),
        // constraints: BoxConstraints(maxHeight: 22, maxWidth: 22),
        splashRadius: 25,
        alignment: Alignment.center,
        tooltip: tooltip,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}

class ExerciseItem extends ConsumerWidget {
  const ExerciseItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authControllerProvider).maybeWhen(
          data: (user) => user,
          orElse: () => null,
        );

    final exercise = ref.watch(exerciseProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${exercise.name} (${exercise.equipment.name})",
                    style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 16),
                  ),
                  Text(
                    exercise.description,
                    style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14),
                  ),
                ],
              ),
              flex: 3,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ExerciseItemActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.exerciseProgression,
                        arguments: exercise,
                      );
                    },
                    icon: Icons.show_chart_outlined,
                    tooltip: "Show progression",
                  ),
                  ExerciseItemActionButton(
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
                    icon: Icons.edit,
                    tooltip: "Edit exercise",
                  ),
                  ExerciseItemActionButton(
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
                    icon: Icons.delete_outline,
                    tooltip: "Delete exercise permanently",
                  ),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
