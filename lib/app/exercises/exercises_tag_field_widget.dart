import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:stronk/util/validation.dart';
import 'package:stronk/app/common_widgets/tag_widgets.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';

import 'package:stronk/models/exercise/exercise_tag.dart';

import 'package:stronk/repositories/exercise_tag_repository.dart';

import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/exercise_tag_controller.dart';

class ExercisesTagField extends StatefulWidget {
  final List<ExerciseTag>? tags;

  const ExercisesTagField({Key? key, this.tags}) : super(key: key);

  @override
  _ExercisesTagFieldState createState() => _ExercisesTagFieldState();
}

class _ExercisesTagFieldState extends State<ExercisesTagField> {
  final _created = const <ExerciseTag>[];
  final _deleted = const <ExerciseTag>[];
  final _active = const <ExerciseTag>[];
  final _inactive = const <ExerciseTag>[];

  @override
  void initState() {
    super.initState();
    if (widget.tags?.isNotEmpty ?? false) {
      _inactive.addAll(widget.tags!);
    }
  }

  bool _contains(List<ExerciseTag> tags, ExerciseTag tag) {
    return tags.where((element) => element.name == tag.name).isNotEmpty;
  }

  void _createTag(String name) {
    final tag = ExerciseTag(name: name);
    if (_contains(_deleted, tag)) _deleted.remove(tag);
    if (!_contains(_active + _inactive + _created, tag)) _created.add(tag);
    _activateTag(tag);
  }

  void _activateTag(ExerciseTag tag) {
    if (!_contains(_active, tag)) _active.add(tag);
    if (_contains(_inactive, tag)) _inactive.remove(tag);
  }

  void _deactivateTag(ExerciseTag tag) {
    if (_contains(_inactive, tag)) _inactive.add(tag);
    if (!_contains(_active, tag)) _active.remove(tag);
  }

  void _deleteTag(ExerciseTag tag) {
    if (_contains(_active, tag)) _active.remove(tag);
    if (_contains(_inactive, tag)) _inactive.remove(tag);
    if (_contains(_created, tag)) _created.remove(tag);
    if (!_contains(_deleted, tag)) _deleted.add(tag);
  }

  @override
  Widget build(BuildContext context) {
    final activeWidgets = _active.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        icon: Icon(Icons.cancel_outlined),
        onHold: () => setState(() => _deleteTag(tag)),
        onAction: () => setState(() => _deactivateTag(tag)),
      ),
    );

    final inactiveWidgets = _inactive.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Colors.grey,
        backgroundColor: Colors.grey.withOpacity(0.1),
        icon: Icon(Icons.add_outlined),
        onHold: () => setState(() => _deleteTag(tag)),
        onAction: () => setState(() => _activateTag(tag)),
      ),
    );

    var widgets = <Widget>[];
    widgets
      ..addAll(activeWidgets)
      ..addAll(inactiveWidgets)
      ..add(EditableTagWidget((String name) => setState(() => _createTag(name))));

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Wrap(
        children: widgets,
        spacing: 5.0,
        runSpacing: 5.0,
        runAlignment: WrapAlignment.start,
      ),
    );
  }
}
