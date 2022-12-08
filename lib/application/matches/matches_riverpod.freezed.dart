// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matches_riverpod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game> matches) loaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Game> matches)? loaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game> matches)? loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesInitial value) initial,
    required TResult Function(MatchesLoading value) loading,
    required TResult Function(MatchesLoaded value) loaded,
    required TResult Function(MatchesFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesInitial value)? initial,
    TResult? Function(MatchesLoading value)? loading,
    TResult? Function(MatchesLoaded value)? loaded,
    TResult? Function(MatchesFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesInitial value)? initial,
    TResult Function(MatchesLoading value)? loading,
    TResult Function(MatchesLoaded value)? loaded,
    TResult Function(MatchesFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesStateCopyWith<$Res> {
  factory $MatchesStateCopyWith(
          MatchesState value, $Res Function(MatchesState) then) =
      _$MatchesStateCopyWithImpl<$Res, MatchesState>;
}

/// @nodoc
class _$MatchesStateCopyWithImpl<$Res, $Val extends MatchesState>
    implements $MatchesStateCopyWith<$Res> {
  _$MatchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MatchesInitialCopyWith<$Res> {
  factory _$$MatchesInitialCopyWith(
          _$MatchesInitial value, $Res Function(_$MatchesInitial) then) =
      __$$MatchesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchesInitialCopyWithImpl<$Res>
    extends _$MatchesStateCopyWithImpl<$Res, _$MatchesInitial>
    implements _$$MatchesInitialCopyWith<$Res> {
  __$$MatchesInitialCopyWithImpl(
      _$MatchesInitial _value, $Res Function(_$MatchesInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchesInitial implements MatchesInitial {
  const _$MatchesInitial();

  @override
  String toString() {
    return 'MatchesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game> matches) loaded,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Game> matches)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game> matches)? loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesInitial value) initial,
    required TResult Function(MatchesLoading value) loading,
    required TResult Function(MatchesLoaded value) loaded,
    required TResult Function(MatchesFailure value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesInitial value)? initial,
    TResult? Function(MatchesLoading value)? loading,
    TResult? Function(MatchesLoaded value)? loaded,
    TResult? Function(MatchesFailure value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesInitial value)? initial,
    TResult Function(MatchesLoading value)? loading,
    TResult Function(MatchesLoaded value)? loaded,
    TResult Function(MatchesFailure value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MatchesInitial implements MatchesState {
  const factory MatchesInitial() = _$MatchesInitial;
}

/// @nodoc
abstract class _$$MatchesLoadingCopyWith<$Res> {
  factory _$$MatchesLoadingCopyWith(
          _$MatchesLoading value, $Res Function(_$MatchesLoading) then) =
      __$$MatchesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchesLoadingCopyWithImpl<$Res>
    extends _$MatchesStateCopyWithImpl<$Res, _$MatchesLoading>
    implements _$$MatchesLoadingCopyWith<$Res> {
  __$$MatchesLoadingCopyWithImpl(
      _$MatchesLoading _value, $Res Function(_$MatchesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchesLoading implements MatchesLoading {
  const _$MatchesLoading();

  @override
  String toString() {
    return 'MatchesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game> matches) loaded,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Game> matches)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game> matches)? loaded,
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
    required TResult Function(MatchesInitial value) initial,
    required TResult Function(MatchesLoading value) loading,
    required TResult Function(MatchesLoaded value) loaded,
    required TResult Function(MatchesFailure value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesInitial value)? initial,
    TResult? Function(MatchesLoading value)? loading,
    TResult? Function(MatchesLoaded value)? loaded,
    TResult? Function(MatchesFailure value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesInitial value)? initial,
    TResult Function(MatchesLoading value)? loading,
    TResult Function(MatchesLoaded value)? loaded,
    TResult Function(MatchesFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MatchesLoading implements MatchesState {
  const factory MatchesLoading() = _$MatchesLoading;
}

/// @nodoc
abstract class _$$MatchesLoadedCopyWith<$Res> {
  factory _$$MatchesLoadedCopyWith(
          _$MatchesLoaded value, $Res Function(_$MatchesLoaded) then) =
      __$$MatchesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Game> matches});
}

/// @nodoc
class __$$MatchesLoadedCopyWithImpl<$Res>
    extends _$MatchesStateCopyWithImpl<$Res, _$MatchesLoaded>
    implements _$$MatchesLoadedCopyWith<$Res> {
  __$$MatchesLoadedCopyWithImpl(
      _$MatchesLoaded _value, $Res Function(_$MatchesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
  }) {
    return _then(_$MatchesLoaded(
      null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$MatchesLoaded implements MatchesLoaded {
  const _$MatchesLoaded(final List<Game> matches) : _matches = matches;

  final List<Game> _matches;
  @override
  List<Game> get matches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'MatchesState.loaded(matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesLoaded &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesLoadedCopyWith<_$MatchesLoaded> get copyWith =>
      __$$MatchesLoadedCopyWithImpl<_$MatchesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game> matches) loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(matches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Game> matches)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(matches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game> matches)? loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(matches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesInitial value) initial,
    required TResult Function(MatchesLoading value) loading,
    required TResult Function(MatchesLoaded value) loaded,
    required TResult Function(MatchesFailure value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesInitial value)? initial,
    TResult? Function(MatchesLoading value)? loading,
    TResult? Function(MatchesLoaded value)? loaded,
    TResult? Function(MatchesFailure value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesInitial value)? initial,
    TResult Function(MatchesLoading value)? loading,
    TResult Function(MatchesLoaded value)? loaded,
    TResult Function(MatchesFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MatchesLoaded implements MatchesState {
  const factory MatchesLoaded(final List<Game> matches) = _$MatchesLoaded;

  List<Game> get matches;
  @JsonKey(ignore: true)
  _$$MatchesLoadedCopyWith<_$MatchesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MatchesFailureCopyWith<$Res> {
  factory _$$MatchesFailureCopyWith(
          _$MatchesFailure value, $Res Function(_$MatchesFailure) then) =
      __$$MatchesFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MatchesFailureCopyWithImpl<$Res>
    extends _$MatchesStateCopyWithImpl<$Res, _$MatchesFailure>
    implements _$$MatchesFailureCopyWith<$Res> {
  __$$MatchesFailureCopyWithImpl(
      _$MatchesFailure _value, $Res Function(_$MatchesFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MatchesFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MatchesFailure implements MatchesFailure {
  const _$MatchesFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MatchesState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesFailureCopyWith<_$MatchesFailure> get copyWith =>
      __$$MatchesFailureCopyWithImpl<_$MatchesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Game> matches) loaded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Game> matches)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Game> matches)? loaded,
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
    required TResult Function(MatchesInitial value) initial,
    required TResult Function(MatchesLoading value) loading,
    required TResult Function(MatchesLoaded value) loaded,
    required TResult Function(MatchesFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesInitial value)? initial,
    TResult? Function(MatchesLoading value)? loading,
    TResult? Function(MatchesLoaded value)? loaded,
    TResult? Function(MatchesFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesInitial value)? initial,
    TResult Function(MatchesLoading value)? loading,
    TResult Function(MatchesLoaded value)? loaded,
    TResult Function(MatchesFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class MatchesFailure implements MatchesState {
  const factory MatchesFailure(final String message) = _$MatchesFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$MatchesFailureCopyWith<_$MatchesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
