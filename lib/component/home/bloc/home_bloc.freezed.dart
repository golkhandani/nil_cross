// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() goToLogin,
    required TResult Function() goToDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? goToLogin,
    TResult? Function()? goToDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? goToLogin,
    TResult Function()? goToDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeEventLoadData value) loadData,
    required TResult Function(_HomeEventGoToLogin value) goToLogin,
    required TResult Function(_HomeEventGoToDashboard value) goToDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeEventLoadData value)? loadData,
    TResult? Function(_HomeEventGoToLogin value)? goToLogin,
    TResult? Function(_HomeEventGoToDashboard value)? goToDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeEventLoadData value)? loadData,
    TResult Function(_HomeEventGoToLogin value)? goToLogin,
    TResult Function(_HomeEventGoToDashboard value)? goToDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeEventLoadDataCopyWith<$Res> {
  factory _$$_HomeEventLoadDataCopyWith(_$_HomeEventLoadData value,
          $Res Function(_$_HomeEventLoadData) then) =
      __$$_HomeEventLoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeEventLoadDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeEventLoadData>
    implements _$$_HomeEventLoadDataCopyWith<$Res> {
  __$$_HomeEventLoadDataCopyWithImpl(
      _$_HomeEventLoadData _value, $Res Function(_$_HomeEventLoadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeEventLoadData
    with DiagnosticableTreeMixin
    implements _HomeEventLoadData {
  const _$_HomeEventLoadData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.loadData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.loadData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeEventLoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() goToLogin,
    required TResult Function() goToDashboard,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? goToLogin,
    TResult? Function()? goToDashboard,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? goToLogin,
    TResult Function()? goToDashboard,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeEventLoadData value) loadData,
    required TResult Function(_HomeEventGoToLogin value) goToLogin,
    required TResult Function(_HomeEventGoToDashboard value) goToDashboard,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeEventLoadData value)? loadData,
    TResult? Function(_HomeEventGoToLogin value)? goToLogin,
    TResult? Function(_HomeEventGoToDashboard value)? goToDashboard,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeEventLoadData value)? loadData,
    TResult Function(_HomeEventGoToLogin value)? goToLogin,
    TResult Function(_HomeEventGoToDashboard value)? goToDashboard,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _HomeEventLoadData implements HomeEvent {
  const factory _HomeEventLoadData() = _$_HomeEventLoadData;
}

/// @nodoc
abstract class _$$_HomeEventGoToLoginCopyWith<$Res> {
  factory _$$_HomeEventGoToLoginCopyWith(_$_HomeEventGoToLogin value,
          $Res Function(_$_HomeEventGoToLogin) then) =
      __$$_HomeEventGoToLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeEventGoToLoginCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeEventGoToLogin>
    implements _$$_HomeEventGoToLoginCopyWith<$Res> {
  __$$_HomeEventGoToLoginCopyWithImpl(
      _$_HomeEventGoToLogin _value, $Res Function(_$_HomeEventGoToLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeEventGoToLogin
    with DiagnosticableTreeMixin
    implements _HomeEventGoToLogin {
  const _$_HomeEventGoToLogin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.goToLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.goToLogin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeEventGoToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() goToLogin,
    required TResult Function() goToDashboard,
  }) {
    return goToLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? goToLogin,
    TResult? Function()? goToDashboard,
  }) {
    return goToLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? goToLogin,
    TResult Function()? goToDashboard,
    required TResult orElse(),
  }) {
    if (goToLogin != null) {
      return goToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeEventLoadData value) loadData,
    required TResult Function(_HomeEventGoToLogin value) goToLogin,
    required TResult Function(_HomeEventGoToDashboard value) goToDashboard,
  }) {
    return goToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeEventLoadData value)? loadData,
    TResult? Function(_HomeEventGoToLogin value)? goToLogin,
    TResult? Function(_HomeEventGoToDashboard value)? goToDashboard,
  }) {
    return goToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeEventLoadData value)? loadData,
    TResult Function(_HomeEventGoToLogin value)? goToLogin,
    TResult Function(_HomeEventGoToDashboard value)? goToDashboard,
    required TResult orElse(),
  }) {
    if (goToLogin != null) {
      return goToLogin(this);
    }
    return orElse();
  }
}

abstract class _HomeEventGoToLogin implements HomeEvent {
  const factory _HomeEventGoToLogin() = _$_HomeEventGoToLogin;
}

/// @nodoc
abstract class _$$_HomeEventGoToDashboardCopyWith<$Res> {
  factory _$$_HomeEventGoToDashboardCopyWith(_$_HomeEventGoToDashboard value,
          $Res Function(_$_HomeEventGoToDashboard) then) =
      __$$_HomeEventGoToDashboardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeEventGoToDashboardCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeEventGoToDashboard>
    implements _$$_HomeEventGoToDashboardCopyWith<$Res> {
  __$$_HomeEventGoToDashboardCopyWithImpl(_$_HomeEventGoToDashboard _value,
      $Res Function(_$_HomeEventGoToDashboard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeEventGoToDashboard
    with DiagnosticableTreeMixin
    implements _HomeEventGoToDashboard {
  const _$_HomeEventGoToDashboard();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.goToDashboard()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.goToDashboard'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeEventGoToDashboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() goToLogin,
    required TResult Function() goToDashboard,
  }) {
    return goToDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function()? goToLogin,
    TResult? Function()? goToDashboard,
  }) {
    return goToDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? goToLogin,
    TResult Function()? goToDashboard,
    required TResult orElse(),
  }) {
    if (goToDashboard != null) {
      return goToDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeEventLoadData value) loadData,
    required TResult Function(_HomeEventGoToLogin value) goToLogin,
    required TResult Function(_HomeEventGoToDashboard value) goToDashboard,
  }) {
    return goToDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeEventLoadData value)? loadData,
    TResult? Function(_HomeEventGoToLogin value)? goToLogin,
    TResult? Function(_HomeEventGoToDashboard value)? goToDashboard,
  }) {
    return goToDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeEventLoadData value)? loadData,
    TResult Function(_HomeEventGoToLogin value)? goToLogin,
    TResult Function(_HomeEventGoToDashboard value)? goToDashboard,
    required TResult orElse(),
  }) {
    if (goToDashboard != null) {
      return goToDashboard(this);
    }
    return orElse();
  }
}

abstract class _HomeEventGoToDashboard implements HomeEvent {
  const factory _HomeEventGoToDashboard() = _$_HomeEventGoToDashboard;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  Home? get home => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({bool isLoading, Home? home});

  $HomeCopyWith<$Res>? get home;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? home = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $HomeCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$$$HomeStateCopyWith(
          _$$$HomeState value, $Res Function(_$$$HomeState) then) =
      __$$$$HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Home? home});

  @override
  $HomeCopyWith<$Res>? get home;
}

/// @nodoc
class __$$$$HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$$$HomeState>
    implements _$$$$HomeStateCopyWith<$Res> {
  __$$$$HomeStateCopyWithImpl(
      _$$$HomeState _value, $Res Function(_$$$HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? home = freezed,
  }) {
    return _then(_$$$HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home?,
    ));
  }
}

/// @nodoc

class _$$$HomeState with DiagnosticableTreeMixin implements $$HomeState {
  const _$$$HomeState({required this.isLoading, this.home});

  @override
  final bool isLoading;
  @override
  final Home? home;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(isLoading: $isLoading, home: $home)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('home', home));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$$HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.home, home) || other.home == home));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, home);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$$HomeStateCopyWith<_$$$HomeState> get copyWith =>
      __$$$$HomeStateCopyWithImpl<_$$$HomeState>(this, _$identity);
}

abstract class $$HomeState implements HomeState {
  const factory $$HomeState({required final bool isLoading, final Home? home}) =
      _$$$HomeState;

  @override
  bool get isLoading;
  @override
  Home? get home;
  @override
  @JsonKey(ignore: true)
  _$$$$HomeStateCopyWith<_$$$HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
