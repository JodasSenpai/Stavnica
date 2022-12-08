import 'package:stavnica/core/failure.dart';
import 'package:oxidized/oxidized.dart';
import 'package:stavnica/domain/matches2/match.dart';

abstract class IMatchRepository {
  Future<Result<List<Game>, IFailure>> getAllMatches();
}
