part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required String? name,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? password,
    required String? confirmPassword,
    required bool? showError,
    required bool? isLoading,
    required bool? isExpanded,
    required bool? showSuccessToast,
    required int? panelIndex,
    required Option<Either<AuthFailure, Unit>>? authFailureOrSuccess,
  }) = _SignupState;
  factory SignupState.initial() => SignupState(
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
        showError: false,
        authFailureOrSuccess: none(),
        isLoading: false,
        firstName: '',
        lastName: '',
        isExpanded: false,
        panelIndex: -1,
        showSuccessToast: false,
      );
}
