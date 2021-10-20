abstract class Validator<T> {
  const Validator();

  bool validate(T? value);
  String? errorString(T? value);
}

class CustomFunctionValidator<T> extends Validator<T> {
  final bool Function(T? value) _validate;
  final String? Function(T? value) _errorString;

  const CustomFunctionValidator({
    required bool Function(T? value) validate,
    required String? Function(T? value) errorString,
  })  : _validate = validate,
        _errorString = errorString;

  @override
  String? errorString(T? value) => _errorString(value);

  @override
  bool validate(T? value) => _validate(value);
}

class StringValidator extends Validator<String> {
  final String? nullError;
  final String? emptyError;

  final int? minChars;
  final String? minError;
  final int? maxChars;
  final String? maxError;

  const StringValidator({
    this.nullError,
    this.emptyError,
    this.minChars,
    this.minError,
    this.maxChars,
    this.maxError,
  });

  @override
  String? errorString(String? value) {
    if (value == null && nullError != null) return nullError;
    if (value!.isEmpty && emptyError != null) return emptyError;
    if (minChars != null && minError != null && value.length < minChars!) return minError;
    if (maxChars != null && maxError != null && value.length > maxChars!) return maxError;
    return null;
  }

  @override
  bool validate(String? value) {
    if (value == null && nullError != null) return false;
    if (value!.isEmpty && emptyError != null) return false;
    if (minChars != null && minError != null && value.length < minChars!) return false;
    if (maxChars != null && maxError != null && value.length > maxChars!) return false;
    return true;
  }
}
