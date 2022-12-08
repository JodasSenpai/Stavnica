part of 'matches_riverpod.dart';

@freezed
class MatchesState with _$MatchesState {
  const factory MatchesState.initial() = MatchesInitial;
  const factory MatchesState.loading() = MatchesLoading;
  const factory MatchesState.loaded(List<Game> matches) = MatchesLoaded;
  const factory MatchesState.failed(String message) = MatchesFailure;
}
