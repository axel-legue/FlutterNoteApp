import 'package:dartz/dartz.dart';
import 'package:flutternote/domain/core/failures.dart';
import 'package:flutternote/domain/core/value_object.dart';
import 'package:flutternote/domain/core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  const EmailAddress._(this.value); // compile-time assignment
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value); // compile-time assignment

}

// Exemple of how get value from Either type
//void showedEmailOrAddressFailure() {
//  final emailAddress = EmailAddress('adadazdaz');
//  String emailText = emailAddress.value
//      .fold((l) => 'Failured happened, more precisely left : $l', (r) => r);
//
//  String emailText2 =
//      emailAddress.value.getOrElse(() => 'Some Failure happened');
//}
