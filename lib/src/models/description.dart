import 'package:formz/formz.dart';

enum DescriptionValidationError { invalid }

class Description extends FormzInput<String, DescriptionValidationError> {
  final int maxLength;

  const Description.pure([this.maxLength = 30]) : super.pure('');
  const Description.dirty([this.maxLength = 30, String value = ''])
      : super.dirty(value);

  // static final RegExp _descriptionRegExp = RegExp(
  //   r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  // );

  @override
  DescriptionValidationError? validator(String value) {
    bool desciptionLimit = value.length <= maxLength;
    return desciptionLimit ? null : DescriptionValidationError.invalid;
  }
}
