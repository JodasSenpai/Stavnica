import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stavnica/application/auth/auth_riverpod.dart';
import 'package:stavnica/core/injection_container.dart';
import 'package:stavnica/domain/auth/auth_repository.dart';

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthNotifier, AuthState>(
  (ref) {
    return AuthNotifier(authRepository: sl<IAuthRepository>());
  },
);
