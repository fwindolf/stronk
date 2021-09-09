import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserOverviewWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          Text("Anonymous User"),
        ],
      ),
    );
  }
}
