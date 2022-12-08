// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Beter {
  String get name => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  List<GameBet> get bets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeterCopyWith<Beter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeterCopyWith<$Res> {
  factory $BeterCopyWith(Beter value, $Res Function(Beter) then) =
      _$BeterCopyWithImpl<$Res, Beter>;
  @useResult
  $Res call({String name, int points, List<GameBet> bets});
}

/// @nodoc
class _$BeterCopyWithImpl<$Res, $Val extends Beter>
    implements $BeterCopyWith<$Res> {
  _$BeterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? points = null,
    Object? bets = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<GameBet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeterCopyWith<$Res> implements $BeterCopyWith<$Res> {
  factory _$$_BeterCopyWith(_$_Beter value, $Res Function(_$_Beter) then) =
      __$$_BeterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int points, List<GameBet> bets});
}

/// @nodoc
class __$$_BeterCopyWithImpl<$Res> extends _$BeterCopyWithImpl<$Res, _$_Beter>
    implements _$$_BeterCopyWith<$Res> {
  __$$_BeterCopyWithImpl(_$_Beter _value, $Res Function(_$_Beter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? points = null,
    Object? bets = null,
  }) {
    return _then(_$_Beter(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      bets: null == bets
          ? _value._bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<GameBet>,
    ));
  }
}

/// @nodoc

class _$_Beter implements _Beter {
  const _$_Beter(
      {required this.name,
      required this.points,
      required final List<GameBet> bets})
      : _bets = bets;

  @override
  final String name;
  @override
  final int points;
  final List<GameBet> _bets;
  @override
  List<GameBet> get bets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bets);
  }

  @override
  String toString() {
    return 'Beter(name: $name, points: $points, bets: $bets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality().equals(other._bets, _bets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, points, const DeepCollectionEquality().hash(_bets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeterCopyWith<_$_Beter> get copyWith =>
      __$$_BeterCopyWithImpl<_$_Beter>(this, _$identity);
}

abstract class _Beter implements Beter {
  const factory _Beter(
      {required final String name,
      required final int points,
      required final List<GameBet> bets}) = _$_Beter;

  @override
  String get name;
  @override
  int get points;
  @override
  List<GameBet> get bets;
  @override
  @JsonKey(ignore: true)
  _$$_BeterCopyWith<_$_Beter> get copyWith =>
      throw _privateConstructorUsedError;
}
