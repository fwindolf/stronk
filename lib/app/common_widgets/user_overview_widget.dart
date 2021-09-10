import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

class UserOverviewWidget extends ConsumerWidget {
  final showStats;
  const UserOverviewWidget([this.showStats = false]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authControllerProvider);

    var name = user?.displayName;
    if (name == null || name.isEmpty) name = "Anonymous User";

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "X workouts",
              ),
              Text(
                "X challenges with x longest streak",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
