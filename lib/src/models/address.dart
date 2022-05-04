import 'package:formz/formz.dart';

enum AddressValidationError { invalid }

class Address extends FormzInput<String, AddressValidationError> {
  const Address.pure() : super.pure('');
  const Address.dirty([String value = '']) : super.dirty(value);

  static final RegExp _addressRegExp = RegExp(
    r'^[#.0-9a-zA-ZÀ-ÿ\u00f1\u00d1\s,-]+$',
  );

  @override
  AddressValidationError? validator(String value) {
    return _addressRegExp.hasMatch(value)
        ? null
        : AddressValidationError.invalid;
  }
}
