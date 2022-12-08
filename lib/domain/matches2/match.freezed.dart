// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Game {
  DocumentReference<Object?> get reference =>
      throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  double get quota => throw _privateConstructorUsedError;
  bool get didEnd => throw _privateConstructorUsedError;
  String get team1 => throw _privateConstructorUsedError;
  String get team2 => throw _privateConstructorUsedError;
  int get team1goals => throw _privateConstructorUsedError;
  int get team2goals => throw _privateConstructorUsedError;
  DateTime get gameStartTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {DocumentReference<Object?> reference,
      String id,
      double quota,
      bool didEnd,
      String team1,
      String team2,
      int team1goals,
      int team2goals,
      DateTime gameStartTime});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? id = null,
    Object? quota = null,
    Object? didEnd = null,
    Object? team1 = null,
    Object? team2 = null,
    Object? team1goals = null,
    Object? team2goals = null,
    Object? gameStartTime = null,
  }) {
    return _then(_value.copyWith(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quota: null == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as double,
      didEnd: null == didEnd
          ? _value.didEnd
          : didEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      team1: null == team1
          ? _value.team1
          : team1 // ignore: cast_nullable_to_non_nullable
              as String,
      team2: null == team2
          ? _value.team2
          : team2 // ignore: cast_nullable_to_non_nullable
              as String,
      team1goals: null == team1goals
          ? _value.team1goals
          : team1goals // ignore: cast_nullable_to_non_nullable
              as int,
      team2goals: null == team2goals
          ? _value.team2goals
          : team2goals // ignore: cast_nullable_to_non_nullable
              as int,
      gameStartTime: null == gameStartTime
          ? _value.gameStartTime
          : gameStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) =
      __$$_GameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<Object?> reference,
      String id,
      double quota,
      bool didEnd,
      String team1,
      String team2,
      int team1goals,
      int team2goals,
      DateTime gameStartTime});
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res, _$_Game>
    implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? id = null,
    Object? quota = null,
    Object? didEnd = null,
    Object? team1 = null,
    Object? team2 = null,
    Object? team1goals = null,
    Object? team2goals = null,
    Object? gameStartTime = null,
  }) {
    return _then(_$_Game(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quota: null == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as double,
      didEnd: null == didEnd
          ? _value.didEnd
          : didEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      team1: null == team1
          ? _value.team1
          : team1 // ignore: cast_nullable_to_non_nullable
              as String,
      team2: null == team2
          ? _value.team2
          : team2 // ignore: cast_nullable_to_non_nullable
              as String,
      team1goals: null == team1goals
          ? _value.team1goals
          : team1goals // ignore: cast_nullable_to_non_nullable
              as int,
      team2goals: null == team2goals
          ? _value.team2goals
          : team2goals // ignore: cast_nullable_to_non_nullable
              as int,
      gameStartTime: null == gameStartTime
          ? _value.gameStartTime
          : gameStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(
      {required this.reference,
      required this.id,
      required this.quota,
      required this.didEnd,
      required this.team1,
      required this.team2,
      required this.team1goals,
      required this.team2goals,
      required this.gameStartTime});

  @override
  final DocumentReference<Object?> reference;
  @override
  final String id;
  @override
  final double quota;
  @override
  final bool didEnd;
  @override
  final String team1;
  @override
  final String team2;
  @override
  final int team1goals;
  @override
  final int team2goals;
  @override
  final DateTime gameStartTime;

  @override
  String toString() {
    return 'Game(reference: $reference, id: $id, quota: $quota, didEnd: $didEnd, team1: $team1, team2: $team2, team1goals: $team1goals, team2goals: $team2goals, gameStartTime: $gameStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quota, quota) || other.quota == quota) &&
            (identical(other.didEnd, didEnd) || other.didEnd == didEnd) &&
            (identical(other.team1, team1) || other.team1 == team1) &&
            (identical(other.team2, team2) || other.team2 == team2) &&
            (identical(other.team1goals, team1goals) ||
                other.team1goals == team1goals) &&
            (identical(other.team2goals, team2goals) ||
                other.team2goals == team2goals) &&
            (identical(other.gameStartTime, gameStartTime) ||
                other.gameStartTime == gameStartTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference, id, quota, didEnd,
      team1, team2, team1goals, team2goals, gameStartTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameCopyWith<_$_Game> get copyWith =>
      __$$_GameCopyWithImpl<_$_Game>(this, _$identity);
}

abstract class _Game implements Game {
  const factory _Game(
      {required final DocumentReference<Object?> reference,
      required final String id,
      required final double quota,
      required final bool didEnd,
      required final String team1,
      required final String team2,
      required final int team1goals,
      required final int team2goals,
      required final DateTime gameStartTime}) = _$_Game;

  @override
  DocumentReference<Object?> get reference;
  @override
  String get id;
  @override
  double get quota;
  @override
  bool get didEnd;
  @override
  String get team1;
  @override
  String get team2;
  @override
  int get team1goals;
  @override
  int get team2goals;
  @override
  DateTime get gameStartTime;
  @override
  @JsonKey(ignore: true)
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameBet {
  DocumentReference<Object?> get gameReference =>
      throw _privateConstructorUsedError;
  int get team1goals => throw _privateConstructorUsedError;
  int get team2goals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameBetCopyWith<GameBet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBetCopyWith<$Res> {
  factory $GameBetCopyWith(GameBet value, $Res Function(GameBet) then) =
      _$GameBetCopyWithImpl<$Res, GameBet>;
  @useResult
  $Res call(
      {DocumentReference<Object?> gameReference,
      int team1goals,
      int team2goals});
}

/// @nodoc
class _$GameBetCopyWithImpl<$Res, $Val extends GameBet>
    implements $GameBetCopyWith<$Res> {
  _$GameBetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameReference = null,
    Object? team1goals = null,
    Object? team2goals = null,
  }) {
    return _then(_value.copyWith(
      gameReference: null == gameReference
          ? _value.gameReference
          : gameReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      team1goals: null == team1goals
          ? _value.team1goals
          : team1goals // ignore: cast_nullable_to_non_nullable
              as int,
      team2goals: null == team2goals
          ? _value.team2goals
          : team2goals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameBetCopyWith<$Res> implements $GameBetCopyWith<$Res> {
  factory _$$_GameBetCopyWith(
          _$_GameBet value, $Res Function(_$_GameBet) then) =
      __$$_GameBetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<Object?> gameReference,
      int team1goals,
      int team2goals});
}

/// @nodoc
class __$$_GameBetCopyWithImpl<$Res>
    extends _$GameBetCopyWithImpl<$Res, _$_GameBet>
    implements _$$_GameBetCopyWith<$Res> {
  __$$_GameBetCopyWithImpl(_$_GameBet _value, $Res Function(_$_GameBet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameReference = null,
    Object? team1goals = null,
    Object? team2goals = null,
  }) {
    return _then(_$_GameBet(
      gameReference: null == gameReference
          ? _value.gameReference
          : gameReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      team1goals: null == team1goals
          ? _value.team1goals
          : team1goals // ignore: cast_nullable_to_non_nullable
              as int,
      team2goals: null == team2goals
          ? _value.team2goals
          : team2goals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameBet implements _GameBet {
  const _$_GameBet(
      {required this.gameReference,
      required this.team1goals,
      required this.team2goals});

  @override
  final DocumentReference<Object?> gameReference;
  @override
  final int team1goals;
  @override
  final int team2goals;

  @override
  String toString() {
    return 'GameBet(gameReference: $gameReference, team1goals: $team1goals, team2goals: $team2goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameBet &&
            (identical(other.gameReference, gameReference) ||
                other.gameReference == gameReference) &&
            (identical(other.team1goals, team1goals) ||
                other.team1goals == team1goals) &&
            (identical(other.team2goals, team2goals) ||
                other.team2goals == team2goals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gameReference, team1goals, team2goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameBetCopyWith<_$_GameBet> get copyWith =>
      __$$_GameBetCopyWithImpl<_$_GameBet>(this, _$identity);
}

abstract class _GameBet implements GameBet {
  const factory _GameBet(
      {required final DocumentReference<Object?> gameReference,
      required final int team1goals,
      required final int team2goals}) = _$_GameBet;

  @override
  DocumentReference<Object?> get gameReference;
  @override
  int get team1goals;
  @override
  int get team2goals;
  @override
  @JsonKey(ignore: true)
  _$$_GameBetCopyWith<_$_GameBet> get copyWith =>
      throw _privateConstructorUsedError;
}
