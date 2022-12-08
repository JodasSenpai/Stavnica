import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';
import 'package:stavnica/domain/matches2/match.dart';

part 'beters_state.dart';
part 'beters_riverpod.freezed.dart';

@injectable
class BetersNotifier extends StateNotifier<BetersState> {
  final IBeterRepository beterRepository;

  BetersNotifier({required this.beterRepository})
      : super(const BetersState.initial()) {
    init();
  }

  void init() async {
    state = const BetersState.loading();
    var response = await beterRepository.getAllBeters();
    response.when(ok: (beters) {
      beters.sort(((a, b) => b.points.compareTo(a.points)));
      state = BetersState.loaded(beters);
    }, err: (failure) {
      state = BetersState.failed(failure.message ?? "Napaka pri pridobivanju");
    });
  }

  void bet(int team1goals, int team2goals, Game game, User user) async {
    var response =
        await beterRepository.setBet(game, user, team1goals, team2goals);
    response.when(ok: (beters) {
      print("yeah it works");
    }, err: (failure) {
      print("doesn't works");
    });
  }
}
