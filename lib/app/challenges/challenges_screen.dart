import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/drawer/default_drawer.dart';
import 'package:stronk/controllers/challenge_controller.dart';
import 'package:stronk/models/challenge/challenge.dart';
import 'package:stronk/routing/app_router.dart';

class ChallengesScreen extends ConsumerWidget {
  Widget _buildContent(List<Challenge> challenges, BuildContext context, WidgetRef ref) {
    if (challenges.isEmpty) {
      return _buildEmpty(context);
    }

    return ListView.builder(
      itemBuilder: (ctx, index) {
        final challenge = challenges[index];
        // final completed = ref.read(completedChallengeListProvider(challenge.id));
        // TODO: Find the execution count for last week
        // TODO: Find the last execution date
        return Card(
            child: Row(
          children: [
            Text(challenge.name),
            Text(challenge.configuration.toString()),
            Text(challenge.totalLoad.toString())
          ],
        ));
      },
      itemCount: challenges.length,
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Material(
            elevation: 1,
            child: ListTile(
              leading: Icon(Icons.info, color: Theme.of(context).colorScheme.primary),
              title: Text("There are no challenges yet!"),
              dense: true,
            )));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenges = ref.watch(challengeListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenges"),
      ),
      drawer: DefaultDrawer(),
      body: challenges.when(
        data: (challenges) => _buildContent(challenges, context, ref),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _buildEmpty(context),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed(AppRoutes.challengeEdit),
      ),
    );
  }
}
