import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';
import 'package:stronk/controllers/exercise_tag_controller.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/repositories/exercise_tag_repository.dart';

import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/util/validation.dart';

class TagWidget extends StatelessWidget {
  final String name;
  final Icon icon;

  final Color color;
  final Color backgroundColor;

  final Function()? onHold;
  final Function() onAction;

  const TagWidget({
    required this.name,
    required this.icon,
    required this.onAction,
    this.onHold,
    this.color = Colors.grey,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: backgroundColor,
      //   borderRadius: BorderRadius.circular(10.0),
      //   border: Border.all(color: color),
      //   boxShadow: [
      //     new BoxShadow(color: Colors.grey, blurRadius: 3.0, offset: new Offset(1.0, 1.0))
      //   ],
      // ),
      child: GestureDetector(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(color: color)),
            IconButton(icon: icon, color: color, onPressed: onAction),
          ],
        ),
        onLongPress: onHold,
      ),
    );
  }
}

class EditableTagWidget extends StatefulWidget {
  final Function generateTag;

  EditableTagWidget(this.generateTag);

  @override
  _EditableTagWidgetState createState() => _EditableTagWidgetState();
}

class _EditableTagWidgetState extends State<EditableTagWidget> {
  final _controller = TextEditingController();

  void submit(BuildContext context) {
    if (_controller.text.isEmpty || _controller.text.length < 4 || _controller.text.length > 20) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text("Could not add tag!"),
      ));
    } else {
      widget.generateTag(_controller.text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Theme.of(context).textTheme.headline6?.fontSize ?? 25) + 20,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   color: Colors.white,
      //   boxShadow: [
      //     new BoxShadow(color: Colors.grey, blurRadius: 3.0, offset: new Offset(1.0, 1.0))
      //   ],
      // ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 60,
              child: TextField(
                controller: _controller,
                autocorrect: false,
                onSubmitted: (_) => submit(context),
                onEditingComplete: () => submit(context),
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9_]'))],
                textInputAction: TextInputAction.done,
              ),
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => submit(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ExercisesTagField extends ConsumerWidget {
  final validationProvider;

  const ExercisesTagField(this.validationProvider);

  void addTag(WidgetRef ref, List<ExerciseTag>? tags, String name) {
    ExerciseTag? tag = tags?.firstWhereOrNull((tag) => tag.name == name);
    if (tag == null) {
      // Create new tag globally, as all available tags don't contain it
      tag = ExerciseTag(name: name);
      final user = ref.read(authControllerProvider);
      if (user != null) {
        ref.read(exerciseTagRepositoryProvider).create(userId: user.uid, tag: tag);
      }
    }

    // Add to state
    activateTag(ref, tag);
  }

  void activateTag(ref, ExerciseTag tag) {
    // Add to state
    final state = ref.read(validationProvider).tags as ValidationItem<List<ExerciseTag>>;
    var tags = <ExerciseTag>[];
    if (state.value != null && state.value!.isNotEmpty) {
      tags = state.value!;
    }
    tags.add(tag);
    (ref.read(validationProvider.notifier) as ExerciseValidationNotifier).updateTags(tags);
  }

  void deactivateTag(ref, ExerciseTag tag) {
    // Remove from state
    final state = ref.read(validationProvider).tags as ValidationItem<List<ExerciseTag>>;
    var tags = <ExerciseTag>[];
    if (state.value != null && state.value!.isNotEmpty) {
      tags = state.value!;
    }
    tags.remove(tag);
    (ref.read(validationProvider.notifier) as ExerciseValidationNotifier).updateTags(tags);
  }

  void removeTag(ref, ExerciseTag tag) {
    // Remove globally
    final user = ref.read(authControllerProvider);
    if (user != null) {
      ref.read(exerciseTagRepositoryProvider).delete(userId: user.uid, tagId: tag.id);
    }

    // Remove from state
    deactivateTag(ref, tag);
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, [List<ExerciseTag>? tags]) {
    final state = ref.watch(validationProvider).tags as ValidationItem<List<ExerciseTag>>;

    final active = state.value ?? <ExerciseTag>[];
    final inactive = tags?.where((tag) => !active.contains(tag)) ?? <ExerciseTag>[];

    final activeWidgets = active.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        icon: Icon(Icons.cancel_outlined),
        onHold: () => removeTag(ref, tag),
        onAction: () => deactivateTag(ref, tag),
      ),
    );

    final inactiveWidgets = inactive.map(
      (tag) => TagWidget(
        name: tag.name,
        color: Colors.grey,
        backgroundColor: Colors.grey.withOpacity(0.1),
        icon: Icon(Icons.add_outlined),
        onHold: () => removeTag(ref, tag),
        onAction: () => activateTag(ref, tag),
      ),
    );

    var widgets = <Widget>[];
    widgets
      ..addAll(activeWidgets)
      ..addAll(inactiveWidgets)
      ..add(EditableTagWidget((String name) => addTag(ref, tags, name)));

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
    // final availableTags = ref.watch(exerciseTagListControllerProvider);

    // return availableTags.when(
    //   data: (tags) => _buildContent(context, ref, tags),
    //   loading: () => _buildContent(context, ref),
    //   error: (error, _) => _buildContent(context, ref),
    // );

    final availableTags = ref.watch(exericseTagListProvider);
    print("Tags: $availableTags");
    return _buildContent(context, ref, availableTags);
  }
}
