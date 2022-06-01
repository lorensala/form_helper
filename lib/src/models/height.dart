import 'package:formz/formz.dart';

enum HeigthValidationError { invalid }

class Heigth extends FormzInput<int?, HeigthValidationError> {
  const Heigth.pure() : super.pure(null);
  const Heigth.dirty([int? value]) : super.dirty(value);

  @override
  HeigthValidationError? validator(int? value) {
    if (value == null) return null;
    return value.isNegative || value == 0
        ? HeigthValidationError.invalid
        : null;
  }
}
