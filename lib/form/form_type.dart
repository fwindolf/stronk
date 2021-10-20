import 'package:flutter/material.dart';
import 'package:stronk/form/form_fields.dart';
import 'package:stronk/form/form_validation.dart';

abstract class FormType<T> {
  const FormType();

  T get value;
  void set value(T value);

  Validator<T> get validator;

  Widget get widget;
}

class StringFormType extends FormType<String> {
  final String Function() _get;
  final void Function(String) _set;
  final Validator<String> _validator;

  const StringFormType({
    required String Function() getValue,
    required Function(String) setValue,
    Validator<String> validator = const StringValidator(),
  })  : _get = getValue,
        _set = setValue,
        _validator = validator;

  @override
  String get value => _get();

  @override
  set value(String value) => _set(value);

  @override
  Validator<String> get validator => _validator;

  @override
  Widget get widget => const StringFormField();
}
