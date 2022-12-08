import 'package:injectable/injectable.dart';
import 'package:stavnica/core/failure.dart';
import 'package:oxidized/src/result.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:stavnica/domain/matches2/match_repository.dart';
import 'package:stavnica/infrastructure/matches/datasource/match_remote_data_source.dart';

@LazySingleton(as: IMatchRepository)
class MatchRepository implements IMatchRepository {
  final IMatchRemoteDatasource matchRemoteDatasource;

  MatchRepository({required this.matchRemoteDatasource});
  @override
  Future<Result<List<Game>, IFailure>> getAllMatches() async {
    try {
      final games = await matchRemoteDatasource.getAllMatches();
      return Ok(games);
    } catch (e) {
      return Err(
          const Failure.serverError("Napaka pri pridobivanju \"Stavcev?\"")
              as IFailure);
    }
  }
}
