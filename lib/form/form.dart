import 'package:flutter/material.dart';
import 'package:stronk/form/form_type.dart';

class AutoForm<T> extends StatefulWidget {
  final T editedItem;
  final List<FormType> itemFields;

  final double verticalPadding;
  final double horizontalPadding;

  final BoxDecoration? decoration;

  const AutoForm({
    Key? key,
    required this.editedItem,
    required this.itemFields,
    this.verticalPadding = 10.0,
    this.horizontalPadding = 5.0,
    this.decoration,
  }) : super(key: key);

  AutoFormState<T> createState() {
    return AutoFormState<T>();
  }
}

class AutoFormState<T> extends State<AutoForm<T>> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return widget.itemFields[index].widget;
        },
        itemCount: widget.itemFields.length,
      ),
    );
  }
}
