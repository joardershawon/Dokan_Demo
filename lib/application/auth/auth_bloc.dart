import 'package:bloc/bloc.dart';
import 'package:dokan_demo/infrastructure/auth/helper/shared_pref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unAuthenticated()) {
    on<_AuthCheckRequested>(
      (event, emit) async {
        final x = await getToken();

        if (x.contains('not found')) {
          emit(const AuthState.unAuthenticated());
        } else {
          emit(const AuthState.authenticated());
        }
      },
    );
  }
}
