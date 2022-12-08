import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:tuple/tuple.dart';

part 'match_details_state.dart';
part 'match_details_riverpod.freezed.dart';

@injectable
class MatchDetailsNotifier extends StateNotifier<MatchDetailsState> {
  final IBeterRepository beterRepository;
  final Tuple2<Game, User> tuple;
  late Game game;
  late User user;
  MatchDetailsNotifier({required this.tuple, required this.beterRepository})
      : super(const MatchDetailsState.loading()) {
    game = tuple.item1;
    user = tuple.item2;
    init();
  }

  void init() async {
    state = const MatchDetailsState.loading();
    var response = await beterRepository.getAllBetersForSpecificMatch(game);

    response.when(ok: (betersOnMatch) {
      if (game.didEnd || game.gameStartTime.isBefore(DateTime.now())) {
        state = MatchDetailsState.alreadyBet(betersOnMatch);
      } else {
        for (var beter in betersOnMatch) {
          if (beter.name == user.email) {
            state = MatchDetailsState.alreadyBet(betersOnMatch);
            return;
          }
        }
        state = MatchDetailsState.didNotBet();
      }
    }, err: (failure) {
      state = MatchDetailsState.failed(
          failure.message ?? "Napaka pri pridobivanju");
    });
  }

  void bet(int team1goals, int team2goals, Game game, User user) async {
    state = const MatchDetailsState.loading();
    var response =
        await beterRepository.setBet(game, user, team1goals, team2goals);
    response.when(ok: (beters) async {
      await Future.delayed(Duration(seconds: 2));
      init();
      print("yeah it works");
    }, err: (failure) {
      state = const MatchDetailsState.didNotBet();
      print("doesn't works");
    });
  }
}
