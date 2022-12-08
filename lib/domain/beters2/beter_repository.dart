import 'package:firebase_auth/firebase_auth.dart';
import 'package:stavnica/core/failure.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:oxidized/oxidized.dart';
import 'package:stavnica/domain/matches2/match.dart';

abstract class IBeterRepository {
  Future<Result<List<Beter>, IFailure>> getAllBeters();
  Future<Result<Unit, IFailure>> setBet(
      Game game, User user, int team1goals, int team2goals);

  Future<Result<List<Beter>, IFailure>> getAllBetersForSpecificMatch(Game game);
}
