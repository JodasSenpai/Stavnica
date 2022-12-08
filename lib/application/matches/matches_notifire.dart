import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stavnica/application/matches/matches_riverpod.dart';
import 'package:stavnica/core/injection_container.dart';
import 'package:stavnica/domain/matches2/match_repository.dart';

final matchesNotifierProvider =
    StateNotifierProvider.autoDispose<MatchesNotifier, MatchesState>(
  (ref) {
    return MatchesNotifier(matchRepository: sl<IMatchRepository>());
  },
);
