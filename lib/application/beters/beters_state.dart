part of 'beters_riverpod.dart';

@freezed
class BetersState with _$BetersState {
  const factory BetersState.initial() = BetersInitial;
  const factory BetersState.loading() = BetersLoading;
  const factory BetersState.loaded(List<Beter> Beters) = BetersLoaded;
  const factory BetersState.failed(String message) = BetersFailure;
}
