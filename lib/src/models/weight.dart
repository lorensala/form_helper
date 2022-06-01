import 'package:formz/formz.dart';

enum WeigthValidationError { invalid }

class Weight extends FormzInput<double?, WeigthValidationError> {
  const Weight.pure() : super.pure(null);
  const Weight.dirty([double? value]) : super.dirty(value);

  @override
  WeigthValidationError? validator(double? value) {
    if (value == null) return null;
    return value.isNegative || value == 0
        ? WeigthValidationError.invalid
        : null;
  }
}
