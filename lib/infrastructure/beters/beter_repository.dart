import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oxidized/src/unit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:stavnica/core/failure.dart';
import 'package:oxidized/src/result.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:stavnica/infrastructure/beters/datasource/beter_remote_data_source.dart';

@LazySingleton(as: IBeterRepository)
class BeterRepository implements IBeterRepository {
  final IBeterRemoteDatasource beterRemoteDatasource;

  const BeterRepository({required this.beterRemoteDatasource});

  @override
  Future<Result<List<Beter>, IFailure>> getAllBeters() async {
    try {
      final beters = await beterRemoteDatasource.getAllBeters();
      return Ok(beters);
    } catch (e) {
      return Err(
          const Failure.serverError("Napaka pri pridobivanju \"Stavcev?\"")
              as IFailure);
    }
  }

  //String matchId, String userId, int team1goals, int team2goals
  @override
  Future<Result<Unit, IFailure>> setBet(
      Game game, User user, int team1goals, int team2goals) async {
    try {
      final beters = await beterRemoteDatasource.setBet(
          game, user.email!, team1goals, team2goals);
      return Ok(unit);
    } catch (e) {
      return Err(
          const Failure.serverError("Napaka pri pridobivanju \"Stavcev?\"")
              as IFailure);
    }
  }

  @override
  Future<Result<List<Beter>, IFailure>> getAllBetersForSpecificMatch(
      Game game) async {
    try {
      final beters =
          await beterRemoteDatasource.getAllBetersForSpecificMatch(game);
      return Ok(beters);
    } catch (e) {
      return Err(
          const Failure.serverError("Napaka pri pridobivanju \"Stavcev?\"")
              as IFailure);
    }
  }
}
