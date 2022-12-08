// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beters_riverpod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BetersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Beter> Beters) loaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Beter> Beters)? loaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Beter> Beters)? loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetersInitial value) initial,
    required TResult Function(BetersLoading value) loading,
    required TResult Function(BetersLoaded value) loaded,
    required TResult Function(BetersFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BetersInitial value)? initial,
    TResult? Function(BetersLoading value)? loading,
    TResult? Function(BetersLoaded value)? loaded,
    TResult? Function(BetersFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetersInitial value)? initial,
    TResult Function(BetersLoading value)? loading,
    TResult Function(BetersLoaded value)? loaded,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetersStateCopyWith<$Res> {
  factory $BetersStateCopyWith(
          BetersState value, $Res Function(BetersState) then) =
      _$BetersStateCopyWithImpl<$Res, BetersState>;
}

/// @nodoc
class _$BetersStateCopyWithImpl<$Res, $Val extends BetersState>
    implements $BetersStateCopyWith<$Res> {
  _$BetersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BetersInitialCopyWith<$Res> {
  factory _$$BetersInitialCopyWith(
          _$BetersInitial value, $Res Function(_$BetersInitial) then) =
      __$$BetersInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetersInitialCopyWithImpl<$Res>
    extends _$BetersStateCopyWithImpl<$Res, _$BetersInitial>
    implements _$$BetersInitialCopyWith<$Res> {
  __$$BetersInitialCopyWithImpl(
      _$BetersInitial _value, $Res Function(_$BetersInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BetersInitial implements BetersInitial {
  const _$BetersInitial();

  @override
  String toString() {
    return 'BetersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BetersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Beter> Beters) loaded,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Beter> Beters)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Beter> Beters)? loaded,
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
    required TResult Function(BetersInitial value) initial,
    required TResult Function(BetersLoading value) loading,
    required TResult Function(BetersLoaded value) loaded,
    required TResult Function(BetersFailure value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BetersInitial value)? initial,
    TResult? Function(BetersLoading value)? loading,
    TResult? Function(BetersLoaded value)? loaded,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetersInitial value)? initial,
    TResult Function(BetersLoading value)? loading,
    TResult Function(BetersLoaded value)? loaded,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BetersInitial implements BetersState {
  const factory BetersInitial() = _$BetersInitial;
}

/// @nodoc
abstract class _$$BetersLoadingCopyWith<$Res> {
  factory _$$BetersLoadingCopyWith(
          _$BetersLoading value, $Res Function(_$BetersLoading) then) =
      __$$BetersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetersLoadingCopyWithImpl<$Res>
    extends _$BetersStateCopyWithImpl<$Res, _$BetersLoading>
    implements _$$BetersLoadingCopyWith<$Res> {
  __$$BetersLoadingCopyWithImpl(
      _$BetersLoading _value, $Res Function(_$BetersLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BetersLoading implements BetersLoading {
  const _$BetersLoading();

  @override
  String toString() {
    return 'BetersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BetersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Beter> Beters) loaded,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Beter> Beters)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Beter> Beters)? loaded,
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
    required TResult Function(BetersInitial value) initial,
    required TResult Function(BetersLoading value) loading,
    required TResult Function(BetersLoaded value) loaded,
    required TResult Function(BetersFailure value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BetersInitial value)? initial,
    TResult? Function(BetersLoading value)? loading,
    TResult? Function(BetersLoaded value)? loaded,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetersInitial value)? initial,
    TResult Function(BetersLoading value)? loading,
    TResult Function(BetersLoaded value)? loaded,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BetersLoading implements BetersState {
  const factory BetersLoading() = _$BetersLoading;
}

/// @nodoc
abstract class _$$BetersLoadedCopyWith<$Res> {
  factory _$$BetersLoadedCopyWith(
          _$BetersLoaded value, $Res Function(_$BetersLoaded) then) =
      __$$BetersLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Beter> Beters});
}

/// @nodoc
class __$$BetersLoadedCopyWithImpl<$Res>
    extends _$BetersStateCopyWithImpl<$Res, _$BetersLoaded>
    implements _$$BetersLoadedCopyWith<$Res> {
  __$$BetersLoadedCopyWithImpl(
      _$BetersLoaded _value, $Res Function(_$BetersLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Beters = null,
  }) {
    return _then(_$BetersLoaded(
      null == Beters
          ? _value._Beters
          : Beters // ignore: cast_nullable_to_non_nullable
              as List<Beter>,
    ));
  }
}

/// @nodoc

class _$BetersLoaded implements BetersLoaded {
  const _$BetersLoaded(final List<Beter> Beters) : _Beters = Beters;

  final List<Beter> _Beters;
  @override
  List<Beter> get Beters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Beters);
  }

  @override
  String toString() {
    return 'BetersState.loaded(Beters: $Beters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetersLoaded &&
            const DeepCollectionEquality().equals(other._Beters, _Beters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_Beters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetersLoadedCopyWith<_$BetersLoaded> get copyWith =>
      __$$BetersLoadedCopyWithImpl<_$BetersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Beter> Beters) loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(Beters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Beter> Beters)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(Beters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Beter> Beters)? loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(Beters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetersInitial value) initial,
    required TResult Function(BetersLoading value) loading,
    required TResult Function(BetersLoaded value) loaded,
    required TResult Function(BetersFailure value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BetersInitial value)? initial,
    TResult? Function(BetersLoading value)? loading,
    TResult? Function(BetersLoaded value)? loaded,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetersInitial value)? initial,
    TResult Function(BetersLoading value)? loading,
    TResult Function(BetersLoaded value)? loaded,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BetersLoaded implements BetersState {
  const factory BetersLoaded(final List<Beter> Beters) = _$BetersLoaded;

  List<Beter> get Beters;
  @JsonKey(ignore: true)
  _$$BetersLoadedCopyWith<_$BetersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$BetersStateCopyWithImpl<$Res, _$BetersFailure>
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
    return 'BetersState.failed(message: $message)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Beter> Beters) loaded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Beter> Beters)? loaded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Beter> Beters)? loaded,
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
    required TResult Function(BetersInitial value) initial,
    required TResult Function(BetersLoading value) loading,
    required TResult Function(BetersLoaded value) loaded,
    required TResult Function(BetersFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BetersInitial value)? initial,
    TResult? Function(BetersLoading value)? loading,
    TResult? Function(BetersLoaded value)? loaded,
    TResult? Function(BetersFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetersInitial value)? initial,
    TResult Function(BetersLoading value)? loading,
    TResult Function(BetersLoaded value)? loaded,
    TResult Function(BetersFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class BetersFailure implements BetersState {
  const factory BetersFailure(final String message) = _$BetersFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$BetersFailureCopyWith<_$BetersFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
