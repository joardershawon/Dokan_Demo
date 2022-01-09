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
  final IAuthFacade iAuthFacade;
  SignupBloc(
    this.iAuthFacade,
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
            state.email!.isEmpty ||
            state.password!.isEmpty ||
            state.name!.isEmpty ||
            state.confirmPassword!.isEmpty;

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
          var x = await iAuthFacade.registerUser(
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
        bool isFormEmpty = state.showError! || state.email!.isEmpty || state.password!.isEmpty;
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
          var x = await iAuthFacade.loginUser(
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
  }
}
