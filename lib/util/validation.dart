import 'package:stronk/util/string_validation_extensions.dart';

class ValidationItem<T> {
  final T? value;
  final String? error;

  const ValidationItem(this.value, this.error);
}

abstract class ValidatorBase<T> {
  const ValidatorBase();

  bool isValid(T? value);
  String? errorText(T? value);
}

class AlwaysValidValidator<T> extends ValidatorBase<T> {
  @override
  String? errorText(value) {
    return "";
  }

  @override
  bool isValid(value) {
    return true;
  }
}

class StringValidator extends ValidatorBase<String> {
  final int? minChars;
  final int? maxChars;
  final String? minError;
  final String? maxError;

  const StringValidator({this.minChars, this.minError, this.maxChars, this.maxError});

  @override
  bool isValid(String? value) {
    return value != null &&
        minChars != null &&
        minError != null &&
        value.containsMoreCharacters(minChars!) &&
        maxChars != null &&
        maxError != null &&
        value.containsLessCharacters(maxChars!);
  }

  @override
  String? errorText(String? value) {
    if (value?.isEmpty ?? true) return null; // Clear error text
    if (minChars != null && minError != null && !value.containsMoreCharacters(minChars!)) {
      return minError;
    }
    if (maxChars != null && maxError != null && !value.containsLessCharacters(maxChars!)) {
      return maxError;
    }
    return null;
  }
}

class ListValidator<T> extends ValidatorBase<List<T>> {
  final int? minItems;
  final int? maxItems;
  final String? minError;
  final String? maxError;

  const ListValidator({this.minItems, this.minError, this.maxItems, this.maxError});

  @override
  bool isValid(List<T>? value) {
    if (value == null || value.isEmpty) return false;
    if (minItems != null && minError != null && value.length < minItems!) return false;
    if (maxItems != null && maxError != null && value.length >= maxItems!) return false;
    return true;
  }

  @override
  String? errorText(List<T>? value) {
    if (value?.isEmpty ?? true) return null; // Clear error text
    if (minItems != null && minError != null && value!.length < minItems!) {
      return minError;
    }
    if (maxItems != null && maxError != null && value!.length >= maxItems!) {
      return maxError;
    }
    return null;
  }
}
