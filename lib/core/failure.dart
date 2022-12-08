import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

abstract class IFailure {
  String? get message;
}

@freezed
class Failure with _$Failure {
  @With<IFailure>()
  const factory Failure.serverError([@Default("Server error") String message]) =
      ServerError;
}
