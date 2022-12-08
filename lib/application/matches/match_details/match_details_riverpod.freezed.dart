// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'match_details_riverpod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Beter> beters) alreadyBet,
    required TResult Function() didNotBet,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Beter> beters)? alreadyBet,
    TResult? Function()? didNotBet,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Beter> beters)? alreadyBet,
    TResult Function()? didNotBet,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchDetails value) loading,
    required TResult Function(AlreadyBet value) alreadyBet,
    required TResult Function(DidNotBet value) didNotBet,
    required TResult Function(BetersFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchDetails value)? loading,
    TResult? Function(AlreadyBet value)? alreadyBet,
    TResult? Function(DidNotBet value)? didNotBet,
    TResult? Function(BetersFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchDetails value)? loading,
    TResult Function(AlreadyBet value)? alreadyBet,
    TResult Function(DidNotBet value)? didNotBet,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchDetailsStateCopyWith<$Res> {
  factory $MatchDetailsStateCopyWith(
          MatchDetailsState value, $Res Function(MatchDetailsState) then) =
      _$MatchDetailsStateCopyWithImpl<$Res, MatchDetailsState>;
}

/// @nodoc
class _$MatchDetailsStateCopyWithImpl<$Res, $Val extends MatchDetailsState>
    implements $MatchDetailsStateCopyWith<$Res> {
  _$MatchDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MatchDetailsCopyWith<$Res> {
  factory _$$MatchDetailsCopyWith(
          _$MatchDetails value, $Res Function(_$MatchDetails) then) =
      __$$MatchDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchDetailsCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$MatchDetails>
    implements _$$MatchDetailsCopyWith<$Res> {
  __$$MatchDetailsCopyWithImpl(
      _$MatchDetails _value, $Res Function(_$MatchDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchDetails implements MatchDetails {
  const _$MatchDetails();

  @override
  String toString() {
    return 'MatchDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Beter> beters) alreadyBet,
    required TResult Function() didNotBet,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Beter> beters)? alreadyBet,
    TResult? Function()? didNotBet,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Beter> beters)? alreadyBet,
    TResult Function()? didNotBet,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchDetails value) loading,
    required TResult Function(AlreadyBet value) alreadyBet,
    required TResult Function(DidNotBet value) didNotBet,
    required TResult Function(BetersFailure value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchDetails value)? loading,
    TResult? Function(AlreadyBet value)? alreadyBet,
    TResult? Function(DidNotBet value)? didNotBet,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchDetails value)? loading,
    TResult Function(AlreadyBet value)? alreadyBet,
    TResult Function(DidNotBet value)? didNotBet,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MatchDetails implements MatchDetailsState {
  const factory MatchDetails() = _$MatchDetails;
}

/// @nodoc
abstract class _$$AlreadyBetCopyWith<$Res> {
  factory _$$AlreadyBetCopyWith(
          _$AlreadyBet value, $Res Function(_$AlreadyBet) then) =
      __$$AlreadyBetCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Beter> beters});
}

/// @nodoc
class __$$AlreadyBetCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$AlreadyBet>
    implements _$$AlreadyBetCopyWith<$Res> {
  __$$AlreadyBetCopyWithImpl(
      _$AlreadyBet _value, $Res Function(_$AlreadyBet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beters = null,
  }) {
    return _then(_$AlreadyBet(
      null == beters
          ? _value._beters
          : beters // ignore: cast_nullable_to_non_nullable
              as List<Beter>,
    ));
  }
}

/// @nodoc

class _$AlreadyBet implements AlreadyBet {
  const _$AlreadyBet(final List<Beter> beters) : _beters = beters;

  final List<Beter> _beters;
  @override
  List<Beter> get beters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beters);
  }

  @override
  String toString() {
    return 'MatchDetailsState.alreadyBet(beters: $beters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyBet &&
            const DeepCollectionEquality().equals(other._beters, _beters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_beters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyBetCopyWith<_$AlreadyBet> get copyWith =>
      __$$AlreadyBetCopyWithImpl<_$AlreadyBet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Beter> beters) alreadyBet,
    required TResult Function() didNotBet,
    required TResult Function(String message) failed,
  }) {
    return alreadyBet(beters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Beter> beters)? alreadyBet,
    TResult? Function()? didNotBet,
    TResult? Function(String message)? failed,
  }) {
    return alreadyBet?.call(beters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Beter> beters)? alreadyBet,
    TResult Function()? didNotBet,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (alreadyBet != null) {
      return alreadyBet(beters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchDetails value) loading,
    required TResult Function(AlreadyBet value) alreadyBet,
    required TResult Function(DidNotBet value) didNotBet,
    required TResult Function(BetersFailure value) failed,
  }) {
    return alreadyBet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchDetails value)? loading,
    TResult? Function(AlreadyBet value)? alreadyBet,
    TResult? Function(DidNotBet value)? didNotBet,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return alreadyBet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchDetails value)? loading,
    TResult Function(AlreadyBet value)? alreadyBet,
    TResult Function(DidNotBet value)? didNotBet,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (alreadyBet != null) {
      return alreadyBet(this);
    }
    return orElse();
  }
}

abstract class AlreadyBet implements MatchDetailsState {
  const factory AlreadyBet(final List<Beter> beters) = _$AlreadyBet;

  List<Beter> get beters;
  @JsonKey(ignore: true)
  _$$AlreadyBetCopyWith<_$AlreadyBet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidNotBetCopyWith<$Res> {
  factory _$$DidNotBetCopyWith(
          _$DidNotBet value, $Res Function(_$DidNotBet) then) =
      __$$DidNotBetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DidNotBetCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$DidNotBet>
    implements _$$DidNotBetCopyWith<$Res> {
  __$$DidNotBetCopyWithImpl(
      _$DidNotBet _value, $Res Function(_$DidNotBet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DidNotBet implements DidNotBet {
  const _$DidNotBet();

  @override
  String toString() {
    return 'MatchDetailsState.didNotBet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DidNotBet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Beter> beters) alreadyBet,
    required TResult Function() didNotBet,
    required TResult Function(String message) failed,
  }) {
    return didNotBet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Beter> beters)? alreadyBet,
    TResult? Function()? didNotBet,
    TResult? Function(String message)? failed,
  }) {
    return didNotBet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Beter> beters)? alreadyBet,
    TResult Function()? didNotBet,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (didNotBet != null) {
      return didNotBet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchDetails value) loading,
    required TResult Function(AlreadyBet value) alreadyBet,
    required TResult Function(DidNotBet value) didNotBet,
    required TResult Function(BetersFailure value) failed,
  }) {
    return didNotBet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchDetails value)? loading,
    TResult? Function(AlreadyBet value)? alreadyBet,
    TResult? Function(DidNotBet value)? didNotBet,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return didNotBet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchDetails value)? loading,
    TResult Function(AlreadyBet value)? alreadyBet,
    TResult Function(DidNotBet value)? didNotBet,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (didNotBet != null) {
      return didNotBet(this);
    }
    return orElse();
  }
}

abstract class DidNotBet implements MatchDetailsState {
  const factory DidNotBet() = _$DidNotBet;
}

/// @nodoc
abstract class _$$BetersFailureCopyWith<$Res> {
  factory _$$BetersFailureCopyWith(
          _$BetersFailure value, $Res Function(_$BetersFailure) then) =
      __$$BetersFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BetersFailureCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$BetersFailure>
    implements _$$BetersFailureCopyWith<$Res> {
  __$$BetersFailureCopyWithImpl(
      _$BetersFailure _value, $Res Function(_$BetersFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BetersFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BetersFailure implements BetersFailure {
  const _$BetersFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MatchDetailsState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetersFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetersFailureCopyWith<_$BetersFailure> get copyWith =>
      __$$BetersFailureCopyWithImpl<_$BetersFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Beter> beters) alreadyBet,
    required TResult Function() didNotBet,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Beter> beters)? alreadyBet,
    TResult? Function()? didNotBet,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Beter> beters)? alreadyBet,
    TResult Function()? didNotBet,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchDetails value) loading,
    required TResult Function(AlreadyBet value) alreadyBet,
    required TResult Function(DidNotBet value) didNotBet,
    required TResult Function(BetersFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchDetails value)? loading,
    TResult? Function(AlreadyBet value)? alreadyBet,
    TResult? Function(DidNotBet value)? didNotBet,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchDetails value)? loading,
    TResult Function(AlreadyBet value)? alreadyBet,
    TResult Function(DidNotBet value)? didNotBet,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class BetersFailure implements MatchDetailsState {
  const factory BetersFailure(final String message) = _$BetersFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$BetersFailureCopyWith<_$BetersFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
