import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stavnica/domain/matches2/match.dart';
part 'beter.freezed.dart';

@freezed
class Beter with _$Beter {
  const factory Beter({
    required String name,
    required int points,
    required List<GameBet> bets,
  }) = _Beter;
}
