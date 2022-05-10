import 'package:formz/formz.dart';

enum LastNameValidationError { invalid }

class LastName extends FormzInput<String, LastNameValidationError> {
  const LastName.pure() : super.pure('');
  const LastName.dirty([String value = '']) : super.dirty(value);

  static final RegExp _lastNameRegEx = RegExp(
      r'''^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$''');

  @override
  LastNameValidationError? validator(String value) {
    bool nameLimit = value.length <= 40;
    return nameLimit && _lastNameRegEx.hasMatch(value)
        ? null
        : LastNameValidationError.invalid;
  }
}
