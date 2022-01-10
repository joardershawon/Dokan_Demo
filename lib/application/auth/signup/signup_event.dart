part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged({
    required String? name,
  }) = _NameChanged;
  const factory SignupEvent.firstNameChanged({
    required String? firstName,
  }) = _FirstNameChanged;
  const factory SignupEvent.lastNameChanged({
    required String? lastName,
  }) = _LastNameChanged;
  const factory SignupEvent.emailChanged({
    required String? email,
  }) = _EmailChanged;
  const factory SignupEvent.passwordChanged({
    required String? password,
  }) = _PasswordChanged;
  const factory SignupEvent.confirmPasswordChanged({
    required String? confirmPassword,
  }) = _ConfirmPasswordChanged;
  const factory SignupEvent.registerWithCredentials() = _RegisterWithCredentials;
  const factory SignupEvent.loginWithCredentials() = _LoginWithCredentials;
  const factory SignupEvent.getUserCredentials() = _GetUserCredentials;
  const factory SignupEvent.postUserChangedName() = _PostUserChangedName;
  const factory SignupEvent.expansionChanged({
    required int? index,
    // required bool? expansion,
  }) = _ExpansionChanged;
}
