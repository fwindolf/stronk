import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/util/validation.dart';

class EditableInstructionItem extends HookWidget {
  final ValidationItem<List<Instruction>> state;
  final Function(List<Instruction>) updateState;

  const EditableInstructionItem({required this.state, required this.updateState});

  void addInstruction(String text) {
    final instruction = Instruction(text: text);
    final instructions = state.value ?? [];
    updateState(instructions..add(instruction));
  }

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey.shade500, // set border color
            width: 1.0), // set border width
        borderRadius: BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {
                addInstruction(controller.text);
                controller.clear();
              },
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: "Add Instruction", errorText: state.error),
                  onSubmitted: (value) {
                    addInstruction(value);
                    controller.clear();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InstructionItem extends StatelessWidget {
  final int index;
  final Instruction instruction;
  final Function(Instruction) remove;

  InstructionItem({required this.index, required this.instruction, required this.remove})
      : super(key: ValueKey(index));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade500,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
                child: Text(
                  instruction.text,
                  maxLines: 4,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () => remove(instruction),
            ),
          ],
        ),
      ),
    );
  }
}

class InstructionField extends HookWidget {
  final ValidationItem<List<Instruction>> state;
  final Function(List<Instruction>) updateState;

  const InstructionField({required this.state, required this.updateState});

  void removeInstruction(Instruction instruction) {
    final instructions = state.value;
    if (instructions != null) {
      updateState(instructions.where((el) => el != instruction).toList());
    }
  }

  void moveInstruction(oldIndex, newIndex) {
    final instructions = List<Instruction>.from(state.value!);
    instructions.insert(newIndex, instructions.removeAt(oldIndex));
    updateState(instructions);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (state.value?.isNotEmpty ?? false)
          Flexible(
            child: Container(
              width: double.infinity,
              child: ReorderableListView.builder(
                shrinkWrap: true,
                itemBuilder: (_, index) => InstructionItem(
                  index: index,
                  instruction: state.value![index],
                  remove: removeInstruction,
                ),
                itemCount: state.value!.length,
                onReorder: moveInstruction,
              ),
            ),
          ),
        EditableInstructionItem(
          state: state,
          updateState: updateState,
        ),
      ],
    );
  }
}
