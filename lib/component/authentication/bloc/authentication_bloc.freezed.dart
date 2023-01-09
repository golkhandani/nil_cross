// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({bool isLoading, bool isLoggedIn});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggedIn = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$$$AuthenticationStateCopyWith(_$$$AuthenticationState value,
          $Res Function(_$$$AuthenticationState) then) =
      __$$$$AuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isLoggedIn});
}

/// @nodoc
class __$$$$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$$$AuthenticationState>
    implements _$$$$AuthenticationStateCopyWith<$Res> {
  __$$$$AuthenticationStateCopyWithImpl(_$$$AuthenticationState _value,
      $Res Function(_$$$AuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggedIn = null,
  }) {
    return _then(_$$$AuthenticationState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$$AuthenticationState implements $$AuthenticationState {
  const _$$$AuthenticationState(
      {this.isLoading = false, this.isLoggedIn = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoggedIn;

  @override
  String toString() {
    return 'AuthenticationState(isLoading: $isLoading, isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$$AuthenticationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$$AuthenticationStateCopyWith<_$$$AuthenticationState> get copyWith =>
      __$$$$AuthenticationStateCopyWithImpl<_$$$AuthenticationState>(
          this, _$identity);
}

abstract class $$AuthenticationState implements AuthenticationState {
  const factory $$AuthenticationState(
      {final bool isLoading, final bool isLoggedIn}) = _$$$AuthenticationState;

  @override
  bool get isLoading;
  @override
  bool get isLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$$$$AuthenticationStateCopyWith<_$$$AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsLoggedIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsLoggedIn,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsLoggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventCheckIsLoggedIn value)
        checkIsLoggedIn,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult? Function(_AuthenticationEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationEventCheckIsLoggedInCopyWith<$Res> {
  factory _$$_AuthenticationEventCheckIsLoggedInCopyWith(
          _$_AuthenticationEventCheckIsLoggedIn value,
          $Res Function(_$_AuthenticationEventCheckIsLoggedIn) then) =
      __$$_AuthenticationEventCheckIsLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationEventCheckIsLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationEventCheckIsLoggedIn>
    implements _$$_AuthenticationEventCheckIsLoggedInCopyWith<$Res> {
  __$$_AuthenticationEventCheckIsLoggedInCopyWithImpl(
      _$_AuthenticationEventCheckIsLoggedIn _value,
      $Res Function(_$_AuthenticationEventCheckIsLoggedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationEventCheckIsLoggedIn
    implements _AuthenticationEventCheckIsLoggedIn {
  const _$_AuthenticationEventCheckIsLoggedIn();

  @override
  String toString() {
    return 'AuthenticationEvent.checkIsLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventCheckIsLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsLoggedIn,
    required TResult Function() logout,
  }) {
    return checkIsLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsLoggedIn,
    TResult? Function()? logout,
  }) {
    return checkIsLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsLoggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventCheckIsLoggedIn value)
        checkIsLoggedIn,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) {
    return checkIsLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult? Function(_AuthenticationEventLogout value)? logout,
  }) {
    return checkIsLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventCheckIsLoggedIn
    implements AuthenticationEvent {
  const factory _AuthenticationEventCheckIsLoggedIn() =
      _$_AuthenticationEventCheckIsLoggedIn;
}

/// @nodoc
abstract class _$$_AuthenticationEventLogoutCopyWith<$Res> {
  factory _$$_AuthenticationEventLogoutCopyWith(
          _$_AuthenticationEventLogout value,
          $Res Function(_$_AuthenticationEventLogout) then) =
      __$$_AuthenticationEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationEventLogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationEventLogout>
    implements _$$_AuthenticationEventLogoutCopyWith<$Res> {
  __$$_AuthenticationEventLogoutCopyWithImpl(
      _$_AuthenticationEventLogout _value,
      $Res Function(_$_AuthenticationEventLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationEventLogout implements _AuthenticationEventLogout {
  const _$_AuthenticationEventLogout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsLoggedIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsLoggedIn,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsLoggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventCheckIsLoggedIn value)
        checkIsLoggedIn,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult? Function(_AuthenticationEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventCheckIsLoggedIn value)?
        checkIsLoggedIn,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventLogout implements AuthenticationEvent {
  const factory _AuthenticationEventLogout() = _$_AuthenticationEventLogout;
}
