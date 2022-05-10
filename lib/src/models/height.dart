import 'package:formz/formz.dart';

enum HeigthValidationError { invalid }

class Heigth extends FormzInput<double, HeigthValidationError> {
  const Heigth.pure() : super.pure(1.70);
  const Heigth.dirty([double value = 1.70]) : super.dirty(value);

  @override
  HeigthValidationError? validator(double value) {
    return value.isNegative || value == 0
        ? HeigthValidationError.invalid
        : null;
  }
}
