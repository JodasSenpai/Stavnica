part of 'match_details_riverpod.dart';

@freezed
class MatchDetailsState with _$MatchDetailsState {
  const factory MatchDetailsState.loading() = MatchDetails;
  const factory MatchDetailsState.alreadyBet(List<Beter> beters) = AlreadyBet;
  const factory MatchDetailsState.didNotBet() = DidNotBet;
  const factory MatchDetailsState.failed(String message) = BetersFailure;
}
