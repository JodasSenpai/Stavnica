import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required DocumentReference reference,
    required String id,
    required double quota,
    required bool didEnd,
    required String team1,
    required String team2,
    required int team1goals,
    required int team2goals,
    required DateTime gameStartTime,
  }) = _Game;
}

@freezed
class GameBet with _$GameBet {
  const factory GameBet({
    required DocumentReference gameReference,
    required int team1goals,
    required int team2goals,
  }) = _GameBet;
}
