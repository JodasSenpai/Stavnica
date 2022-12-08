import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/auth/auth_repository.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';

part 'auth_state.dart';
part 'auth_riverpod.freezed.dart';

@injectable
class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository authRepository;

  AuthNotifier({required this.authRepository})
      : super(const AuthState.unauthenticated(null)) {
    init();
  }

  void init() async {
    state = const AuthState.loading();
    var response = await authRepository.getUser();
    response.when(ok: (user) {
      state = AuthState.authenticated(user);
    }, err: (failure) {
      state = AuthState.unauthenticated(failure.message);
    });
  }

  User? getCurrentUser() {
    return state.maybeMap(
        orElse: () => null, authenticated: (value) => value.user);
  }

  void login(String email, String passsword) async {
    state = const AuthState.loading();
    var response =
        await authRepository.login(emailAddress: email, password: passsword);
    response.when(ok: (user) {
      state = AuthState.authenticated(user);
    }, err: (failure) {
      state = AuthState.unauthenticated(failure.message);
    });
  }

  void logout() async {
    state = const AuthState.loading();
    var response = await authRepository.logout();
    response.when(ok: (user) {
      state = const AuthState.unauthenticated(null);
    }, err: (failure) {
      state = AuthState.unauthenticated(failure.message);
    });
  }

  void register(String email, String passsword) async {
    state = const AuthState.loading();
    var response =
        await authRepository.register(emailAddress: email, password: passsword);
    response.when(ok: (user) {
      state = AuthState.authenticated(user);
    }, err: (failure) {
      state = AuthState.unauthenticated(failure.message);
    });
  }
}
