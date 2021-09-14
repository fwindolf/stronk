import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/tag_widgets.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';
import 'package:stronk/controllers/exercise_tag_controller.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/repositories/exercise_tag_repository.dart';

import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/util/validation.dart';

class ExercisesTagField extends ConsumerWidget {
  final ValidationItem<List<ExerciseTag>> state;
  final Function(List<ExerciseTag>?) updateState;

  var created = <ExerciseTag>[];
  var active = <ExerciseTag>[];
  var inactive = <ExerciseTag>[];
  var deleted = <ExerciseTag>[];

  ExercisesTagField({required this.state, required this.updateState});

  bool _contains(List<ExerciseTag> tags, ExerciseTag tag) {
    return tags.where((el) => tag.name == el.name).isNotEmpty;
  }

  void _initTags(List<ExerciseTag> available, List<ExerciseTag> tags) {
    active.clear();
    active.addAll(tags);

    inactive.clear();
    inactive.addAll(available);
  }

  void _createTag(ExerciseTag tag, WidgetRef ref) {
    // Create if not exists, add to created
    final user = ref.read(authControllerProvider);
    if (user != null && !_contains(created + active + inactive, tag)) {
      created.add(tag);
      ref.read(exerciseTagRepositoryProvider).create(userId: user.uid, tag: tag);
    } else if (_contains(deleted, tag)) {
      deleted.remove(tag);
    }

    // Add to state
    if (!_contains(active, tag)) active.add(tag);
    if (_contains(inactive, tag)) inactive.remove(tag);
    updateState(active);
  }

  void _activateTag(ExerciseTag tag) {
    if (!_contains(active, tag)) active.add(tag);
    if (_contains(inactive, tag)) inactive.remove(tag);
    updateState(active);
  }

  void _deactivateTag(ExerciseTag tag) {
    if (_contains(active, tag)) active.remove(tag);
    if (!_contains(inactive, tag)) inactive.add(tag);
    updateState(active);
  }

  void _deleteTag(ExerciseTag tag, WidgetRef ref) {
    if (_contains(created, tag)) created.remove(tag);
    if (_contains(active, tag)) active.remove(tag);
    if (_contains(inactive, tag)) inactive.remove(tag);

    // Delete if exists, add to deleted
    final user = ref.read(authControllerProvider);
    if (user != null && _contains(created + active + inactive, tag)) {
      ref.read(exerciseTagRepositoryProvider).delete(userId: user.uid, tagId: tag.id!);
    }

    updateState(active);
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, [List<ExerciseTag>? tags]) {
    _initTags(tags ?? [], state.value ?? []);

    final activeWidgets = active.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        icon: Icon(Icons.cancel_outlined),
        onHold: () => _deleteTag(tag, ref),
        onAction: () => _deactivateTag(tag),
      ),
    );

    final inactiveWidgets = inactive.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Colors.grey,
        backgroundColor: Colors.grey.withOpacity(0.1),
        icon: Icon(Icons.add_outlined),
        onHold: () => _deleteTag(tag, ref),
        onAction: () => _activateTag(tag),
      ),
    );

    var widgets = <Widget>[];
    widgets
      ..addAll(activeWidgets)
      ..addAll(inactiveWidgets)
      ..add(EditableTagWidget((String name) => _createTag(ExerciseTag(name: name), ref)));

    return Container(
      child: Wrap(
        children: widgets,
        spacing: 5.0,
        runSpacing: 5.0,
        runAlignment: WrapAlignment.start,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableTags = ref.watch(exerciseTagListControllerProvider);

    return availableTags.when(
      data: (tags) => _buildContent(context, ref, tags),
      loading: () => _buildContent(context, ref),
      error: (error, _) => _buildContent(context, ref),
    );
  }
}
