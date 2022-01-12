import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IAuthFacade _iAuthFacade;
  SignupBloc(
    this._iAuthFacade,
  ) : super(SignupState.initial()) {
    on<_RegisterWithCredentials>(
      (event, emit) async {
        bool isFormEmpty =
            event.email!.isEmpty || event.password!.isEmpty || event.name!.isEmpty || event.confirmPassword!.isEmpty;

        emit(
          state.copyWith(
            isLoading: true,
            showError: false,
            showSuccessToast: false,
            authFailureOrSuccess: none(),
          ),
        );

        if (isFormEmpty) {
          emit(
            state.copyWith(
              showError: true,
              isLoading: false,
              showSuccessToast: false,
              authFailureOrSuccess: none(),
            ),
          );
        } else {
          var x = await _iAuthFacade.registerUser(
            username: event.name,
            email: event.email,
            password: event.password,
          );
          emit(
            state.copyWith(
              isLoading: false,
              showSuccessToast: true,
              authFailureOrSuccess: optionOf(x),
            ),
          );
        }
      },
    );
    on<_LoginWithCredentials>(
      (event, emit) async {
        bool isFormEmpty = event.email!.isEmpty || event.password!.isEmpty;
        print(isFormEmpty);
        emit(
          state.copyWith(
            isLoading: true,
            showError: false,
            showSuccessToast: false,
            authFailureOrSuccess: none(),
          ),
        );

        if (isFormEmpty) {
          emit(
            state.copyWith(
              showError: true,
              isLoading: false,
              showSuccessToast: false,
              authFailureOrSuccess: none(),
            ),
          );
        } else {
          var x = await _iAuthFacade.loginUser(
            email: event.email,
            password: event.password,
          );
          emit(
            state.copyWith(
              isLoading: false,
              showSuccessToast: true,
              authFailureOrSuccess: optionOf(x),
            ),
          );
        }
      },
    );
    on<_GetUserCredentials>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            showError: false,
          ),
        );
        final x = await _iAuthFacade.getUser();
        x.fold(
          (l) => emit(
            state.copyWith(
              showError: true,
              isLoading: false,
            ),
          ),
          (r) => emit(
            state.copyWith(
              showError: false,
              isLoading: false,
              firstName: r.firstName,
              lastName: r.lastName,
              email: r.email,
              name: r.name,
            ),
          ),
        );
      },
    );

    on<_PostUserChangedName>(
      (event, emit) async {
        bool isFormEmpty = event.firstName!.isEmpty || event.lastName!.isEmpty;
        emit(
          state.copyWith(
            isLoading: true,
            showError: false,
            authFailureOrSuccess: none(),
          ),
        );

        if (isFormEmpty) {
          emit(
            state.copyWith(
              showError: true,
              isLoading: false,
              authFailureOrSuccess: none(),
            ),
          );
        } else {
          emit(
            state.copyWith(
              showError: false,
              isLoading: true,
            ),
          );
          var x = await _iAuthFacade.postChangedName(
            firstName: event.firstName,
            lastName: event.lastName,
          );
          x.fold(
            (l) => emit(
              state.copyWith(
                showError: true,
                isLoading: false,
              ),
            ),
            (r) => emit(
              state.copyWith(
                showError: false,
                isLoading: false,
                isExpanded: !state.isExpanded!,
                name: r.name,
                firstName: r.firstName,
                lastName: r.lastName,
                email: r.email,
              ),
            ),
          );
        }
      },
    );
    on<_ExpansionChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            showError: false,
            isLoading: false,
            isExpanded: !state.isExpanded!,
            panelIndex: event.index,
          ),
        );
      },
    );

    on<_LoadSuccess>(
      (event, emit) {
        emit(
          state.copyWith(
            showSuccessToast: true,
          ),
        );
      },
    );
  }
}
