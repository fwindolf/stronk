import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

class UserOverviewWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(authControllerProvider);

    return Container(
      padding: const EdgeInsets.only(top: 25.0),
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Text(user?.displayName == null ? "Anonymous user" : user!.displayName!),
          ],
        ),
      ),
    );
  }
}
