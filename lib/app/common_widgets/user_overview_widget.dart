import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

class UserOverviewWidget extends ConsumerWidget {
  final showStats;
  const UserOverviewWidget([this.showStats = false]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(authControllerProvider).when(
          data: (user) {
            if (user.displayName == null || user.displayName!.isEmpty) {
              return "Anonymous User";
            }
            return user.displayName!;
          },
          loading: () => "Loading User",
          error: (error, _) => "Unknown User",
        );

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CircleAvatar(
                minRadius: 20,
                maxRadius: 30,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 10.0),
                  ),
                ),
                Text(
                  "X workouts",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontSize: 16,
                      ),
                ),
                Text(
                  "X challenges with x longest streak",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontSize: 16,
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
