part of 'auth_riverpod.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated(String? message) = Unauthenticated;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.loading() = Loading;
}
