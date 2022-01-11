part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.registerWithCredentials({
    required String? name,
    required String? email,
    required String? password,
    required String? confirmPassword,
  }) = _RegisterWithCredentials;
  const factory SignupEvent.loginWithCredentials({
    required String? email,
    required String? password,
  }) = _LoginWithCredentials;
  const factory SignupEvent.getUserCredentials() = _GetUserCredentials;
  const factory SignupEvent.postUserChangedName({
    required String? firstName,
    required String? lastName,
  }) = _PostUserChangedName;
  const factory SignupEvent.expansionChanged({
    required int? index,
    // required bool? expansion,
  }) = _ExpansionChanged;
}
