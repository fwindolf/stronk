/// Stolen from https://gist.github.com/iamarnas/ac1aca37a4b27b2543674933335e071a

extension StringValidationExtensions on String? {
  /// Validate email with [RegExp]. Must match `name@example.co(m)`
  bool get emailValidation {
    if (this == null) return false;
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,3}))$';
    final regexp = RegExp(pattern);
    return regexp.hasMatch(this!);
  }

  /// If password contains A-z, 0-9 and least 6 characters then return `true``
  /// space not allowed then return `false`
  bool get passwordValidation {
    if (this == null) return false;
    if (!identical(this!, this!.trim())) return false;

    // Advanced password validation with [RegExp]
    // * (?=.*[A-Z]) The string must contain at least 1 uppercase alphabetical character
    // * (?=.*[0-9]) The string must contain at least 1 numeric character
    // * (?=.{6,}) The string must be six characters or longer
    // * (?!.*\s) Space not allowed
    // Password must contain A-z, 0-9 and least 6 characters
    const pattern = r'(?=.*[A-Z])(?=.*[0-9])(?=.{6,})(?!.*[\s])';
    final regex = RegExp(pattern);
    return regex.hasMatch(this!);
  }

  bool get urlValidation {
    if (this == null) return false;
    if (!identical(this!, this!.trim())) return false;

    const pattern =
        r'(http://www.|https://www.|http://|https://|www.)[a-z0-9]+([-.]{1}[a-z0-9]+)*.[a-z]{2,5}(:[0-9]{1,5})?(/.*)?';
    final regex = RegExp(pattern);
    return regex.hasMatch(this!);
  }

  bool get containsSpace {
    const pattern = r'(?=.*[\s])';
    final regexp = RegExp(pattern);
    return regexp.hasMatch(this!);
  }

  bool get containsCapitalLetter {
    const pattern = '(?=.*[A-Z])';
    final regexp = RegExp(pattern);
    return regexp.hasMatch(this!);
  }

  bool get containsNumber {
    const pattern = '(?=.*[0-9])';
    final regexp = RegExp(pattern);
    return regexp.hasMatch(this!);
  }

  bool containsMoreCharacters(int than) {
    return this != null && this!.length > than;
  }

  bool containsLessCharacters(int than) {
    return this != null && this!.length < than;
  }

  bool get needNumberAndCapitalLetter {
    return !containsCapitalLetter && !containsNumber && containsMoreCharacters(6);
  }

  bool get needNumberToBeAdded {
    return containsCapitalLetter && !containsNumber && containsMoreCharacters(6);
  }

  bool get needCapitalLetterToBeAdded {
    return !containsCapitalLetter && containsNumber && containsMoreCharacters(6);
  }

  bool get tooShort {
    return containsCapitalLetter && containsNumber && !containsMoreCharacters(6);
  }

  bool get tooLong {
    return containsCapitalLetter && containsNumber && containsMoreCharacters(36);
  }
}
