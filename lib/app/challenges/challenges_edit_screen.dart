import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/challenge/challenge.dart';

class ChallengeEditScreen extends ConsumerWidget {
  final Challenge? editedChallenge;

  ChallengeEditScreen({Key? key, required this.editedChallenge}) : super(key: key);

  final _form = GlobalKey<FormState>();

  void _saveForm(BuildContext context, WidgetRef ref) {
    // Run validation on all fields

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Error in the form, could not edit or create an Exercise"),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise Name"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _saveForm(context, ref),
        child: Icon(Icons.save_outlined),
      ),
      body: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5, right: 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    constraints: BoxConstraints(minHeight: 40),
                    child: Text("Description"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
