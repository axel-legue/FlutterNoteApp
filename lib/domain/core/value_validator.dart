import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input); // Correct Data
  } else {
    return left(
        ValueFailure.invalidEmail(failedValue: input)); // Incorrect Data
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  //TODO Update password validation strength
  if (input.length >= 6) {
    return right(input); // Correct Data
  } else {
    return left(
        ValueFailure.shortPassword(failedValue: input)); // Incorrect Data
  }
}
