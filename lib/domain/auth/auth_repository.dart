import 'package:firebase_auth/firebase_auth.dart';

import 'package:oxidized/oxidized.dart';
import 'package:stavnica/core/failure.dart';

abstract class IAuthRepository {
  Future<Result<User, IFailure>> login(
      {required String emailAddress, required String password});
  Future<Result<Unit, IFailure>> logout();
  Future<Result<User, IFailure>> register(
      {required String emailAddress, required String password});
  Future<Result<User, IFailure>> getUser();
}
