import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:stavnica/domain/matches2/match_repository.dart';

part 'matches_state.dart';
part 'matches_riverpod.freezed.dart';

@injectable
class MatchesNotifier extends StateNotifier<MatchesState> {
  final IMatchRepository matchRepository;

  MatchesNotifier({required this.matchRepository})
      : super(const MatchesState.initial()) {
    init();
  }

  void init() async {
    state = const MatchesState.loading();
    var response = await matchRepository.getAllMatches();
    response.when(ok: (matches) {
      matches.sort((a, b) => a.gameStartTime.compareTo(b.gameStartTime));
      state = MatchesState.loaded(matches);
    }, err: (failure) {
      state = MatchesState.failed(failure.message ?? "Napaka pri pridobivanju");
    });
  }
}
