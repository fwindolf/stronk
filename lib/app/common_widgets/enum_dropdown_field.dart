import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stronk/util/validation.dart';

class EnumDropdownField<T> extends StatelessWidget {
  final String name;
  final Map<T, String> choices;
  final ValidationItem<T> state;

  final Function(T?) updateState;

  const EnumDropdownField({
    required this.name,
    required this.choices,
    required this.state,
    required this.updateState,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
        ),
        value: state.value,
        hint: Text(name),
        isExpanded: false,
        items: choices.keys
            .map(
              (t) => DropdownMenuItem<T>(
                child: Tooltip(child: Text(describeEnum(t as Enum)), message: choices[t]!),
                value: t,
              ),
            )
            .toList(),
        onSaved: (value) => updateState(value as T),
        onChanged: (value) => updateState(value as T),
      ),
    );
  }
}
