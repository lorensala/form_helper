import 'package:formz/formz.dart';

enum DescriptionValidationError { invalid }

class Description extends FormzInput<String, DescriptionValidationError> {
  const Description.pure() : super.pure('');
  const Description.dirty([String value = '']) : super.dirty(value);

  // static final RegExp _descriptionRegExp = RegExp(
  //   r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  // );

  @override
  DescriptionValidationError? validator(String value) {
    bool desciptionLimit = value.length <= 30;
    return desciptionLimit ? null : DescriptionValidationError.invalid;
  }
}
