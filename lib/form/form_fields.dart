import 'package:flutter/material.dart';

class StringFormField extends StatefulWidget {
  const StringFormField();

  @override
  State<StringFormField> createState() => _StringFormFieldState();
}

class _StringFormFieldState extends State<StringFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: "Exercise Description",
          errorText: state.error,
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.next,
        minLines: 1,
        maxLines: 3,
        onChanged: (value) => updateState(value),
      ),
    );
  }
}
