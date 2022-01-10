import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:dokan_demo/domain/auth/auth_failure.dart';
import 'package:dokan_demo/domain/auth/i_auth_facade.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IAuthFacade _iAuthFacade;
  SignupBloc(
    this._iAuthFacade,
  ) : super(SignupState.initial()) {
    on<_NameChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            name: event.name,
            showError: false,
            isLoading: false,
            authFailureOrSuccess: none(),
          ),
        );
      },
    );
    on<_EmailChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            email: event.email,
            showError: false,
            isLoading: false,
            authFailureOrSuccess: none(),
          ),
        );
      },
    );
    on<_PasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            password: event.password,
            showError: false,
            isLoading: false,
            authFailureOrSuccess: none(),
          ),
        );
      },
    );
    on<_ConfirmPasswordChanged>(
      (event, emit) {
        if (state.password == event.confirmPassword) {
          emit(
            state.copyWith(
              showError: false,
              isLoading: false,
              confirmPassword: event.confirmPassword,
              authFailureOrSuccess: none(),
            ),
          );
        } else {
          emit(
            state.copyWith(
              showError: true,
              isLoading: false,
              authFailureOrSuccess: none(),
            ),
          );
        }
      },
    );
    on<_RegisterWithCredentials>(
      (event, emit) async {
        bool isFormEmpty = state.showError! ||
            state.email == null ||
            state.password == null ||
            state.name == null ||
            state.confirmPassword == null;

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
          var x = await _iAuthFacade.registerUser(
            username: state.name,
            email: state.email,
            password: state.password,
          );
          emit(
            state.copyWith(
              isLoading: false,
              authFailureOrSuccess: optionOf(x),
            ),
          );
        }
      },
    );
    on<_LoginWithCredentials>(
      (event, emit) async {
        bool isFormEmpty = state.showError! || state.email == null || state.password == null;
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
          var x = await _iAuthFacade.loginUser(
            email: state.email,
            password: state.password,
          );
          emit(
            state.copyWith(
              isLoading: false,
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
    on<_FirstNameChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            firstName: event.firstName,
            showError: false,
            isLoading: false,
            authFailureOrSuccess: none(),
          ),
        );
      },
    );
    on<_LastNameChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            lastName: event.lastName,
            showError: false,
            isLoading: false,
            authFailureOrSuccess: none(),
          ),
        );
      },
    );
    on<_PostUserChangedName>(
      (event, emit) async {
        bool isFormEmpty = state.showError! || state.firstName == null || state.lastName == null;
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
            firstName: state.firstName,
            lastName: state.lastName,
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
  }
}
