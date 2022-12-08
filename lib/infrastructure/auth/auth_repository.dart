import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/core/failure.dart';
import 'package:oxidized/src/unit.dart';
import 'package:oxidized/src/result.dart';
import 'package:stavnica/domain/auth/auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepository(this.firebaseAuth);

  @override
  Future<Result<User, IFailure>> login(
      {required String emailAddress, required String password}) async {
    try {
      var user = await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);

      return user.user != null
          ? Ok(user.user!)
          : Err(
              const Failure.serverError("Uporabnik ni prijavlen") as IFailure);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return Err(
            const Failure.serverError("Uporabnik že obstaja") as IFailure);
      } else {
        return Err(const Failure.serverError(
                "Napaka pri pri registraciji, preveri vpisane podatke!")
            as IFailure);
      }
    }
  }

  @override
  Future<Result<Unit, IFailure>> logout() async {
    await firebaseAuth.signOut();
    return Ok(unit);
  }

  @override
  Future<Result<User, IFailure>> register(
      {required String emailAddress, required String password}) async {
    try {
      var user = await firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      return Ok(user.user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return Err(
            const Failure.serverError("Uporabnik že obstaja") as IFailure);
      } else {
        return Err(const Failure.serverError(
                "Napaka pri pri registraciji, preveri vpisane podatke!")
            as IFailure);
      }
    }
  }

  @override
  Future<Result<User, IFailure>> getUser() async {
    try {
      var user = firebaseAuth.currentUser;
      return user != null
          ? Ok(user)
          : Err(
              const Failure.serverError("Uporabnik ni prijavlen") as IFailure);
    } catch (e) {
      return Err(const Failure.serverError("Napaka pri pridobivanju uporabnika")
          as IFailure);
    }
  }
}
