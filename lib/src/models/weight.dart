import 'package:formz/formz.dart';

enum WeigthValidationError { invalid }

class Weigth extends FormzInput<double, WeigthValidationError> {
  const Weigth.pure() : super.pure(40);
  const Weigth.dirty([double value = 40]) : super.dirty(value);

  @override
  WeigthValidationError? validator(double value) {
    return value.isNegative || value == 0
        ? WeigthValidationError.invalid
        : null;
  }
}
