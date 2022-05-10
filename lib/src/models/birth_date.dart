import 'package:formz/formz.dart';

enum BirthDateValidationError { invalid }

class BirthDate extends FormzInput<DateTime?, BirthDateValidationError> {
  const BirthDate.pure() : super.pure(null);
  const BirthDate.dirty([DateTime? value]) : super.dirty(value);

  static final DateTime _minDate =
      DateTime.now().subtract(const Duration(days: 365 * 18));

  @override
  BirthDateValidationError? validator(DateTime? value) {
    return value == null || value.isAfter(_minDate)
        ? BirthDateValidationError.invalid
        : null;
  }
}
