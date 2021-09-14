import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/util/validation.dart';

class InstructionField extends HookWidget {
  final ValidationItem<List<Instruction>> state;
  final Function(List<Instruction>) updateState;

  const InstructionField({required this.state, required this.updateState});

  Widget _buildInstruction(Instruction instruction) {
    return Center(child: Text(instruction.text));
  }

  Widget _buildPlaceholder() {
    return Center(child: Text("Add new instructions here!"));
  }

  @override
  Widget build(BuildContext context) {
    final preController = useTextEditingController(text: "");
    final postController = useTextEditingController(text: "");

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Pre",
            errorText: state.error,
            border: OutlineInputBorder(),
          ),
          textInputAction: TextInputAction.next,
          controller: preController,
          // onChanged: (value) => updateState(),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey.shade500, // set border color
                width: 1.0), // set border width
            borderRadius: BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
          ),
          constraints: BoxConstraints(minHeight: 40),
          child: state.value?.isEmpty ?? true
              ? _buildPlaceholder()
              : ListView.builder(
                  itemBuilder: (_, index) => _buildInstruction(state.value![index]),
                  itemCount: state.value!.length,
                ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Post",
            errorText: state.error,
            border: OutlineInputBorder(),
          ),
          textInputAction: TextInputAction.next,
          controller: postController,
          // onChanged: (value) => updateState(),
        ),
      ],
    );
  }
}
