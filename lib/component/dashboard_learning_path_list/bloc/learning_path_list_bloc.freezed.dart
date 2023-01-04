// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_path_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningPathListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) select,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? select,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? select,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelect value) select,
    required TResult Function(_LearningPathListLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelect value)? select,
    TResult? Function(_LearningPathListLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelect value)? select,
    TResult Function(_LearningPathListLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathListEventCopyWith<$Res> {
  factory $LearningPathListEventCopyWith(LearningPathListEvent value,
          $Res Function(LearningPathListEvent) then) =
      _$LearningPathListEventCopyWithImpl<$Res, LearningPathListEvent>;
}

/// @nodoc
class _$LearningPathListEventCopyWithImpl<$Res,
        $Val extends LearningPathListEvent>
    implements $LearningPathListEventCopyWith<$Res> {
  _$LearningPathListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LearningPathListSelectCopyWith<$Res> {
  factory _$$_LearningPathListSelectCopyWith(_$_LearningPathListSelect value,
          $Res Function(_$_LearningPathListSelect) then) =
      __$$_LearningPathListSelectCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_LearningPathListSelectCopyWithImpl<$Res>
    extends _$LearningPathListEventCopyWithImpl<$Res, _$_LearningPathListSelect>
    implements _$$_LearningPathListSelectCopyWith<$Res> {
  __$$_LearningPathListSelectCopyWithImpl(_$_LearningPathListSelect _value,
      $Res Function(_$_LearningPathListSelect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_LearningPathListSelect(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LearningPathListSelect implements _LearningPathListSelect {
  const _$_LearningPathListSelect(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'LearningPathListEvent.select(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathListSelect &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathListSelectCopyWith<_$_LearningPathListSelect> get copyWith =>
      __$$_LearningPathListSelectCopyWithImpl<_$_LearningPathListSelect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) select,
    required TResult Function() load,
  }) {
    return select(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? select,
    TResult? Function()? load,
  }) {
    return select?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? select,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelect value) select,
    required TResult Function(_LearningPathListLoad value) load,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelect value)? select,
    TResult? Function(_LearningPathListLoad value)? load,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelect value)? select,
    TResult Function(_LearningPathListLoad value)? load,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _LearningPathListSelect implements LearningPathListEvent {
  const factory _LearningPathListSelect(final String id) =
      _$_LearningPathListSelect;

  String get id;
  @JsonKey(ignore: true)
  _$$_LearningPathListSelectCopyWith<_$_LearningPathListSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LearningPathListLoadCopyWith<$Res> {
  factory _$$_LearningPathListLoadCopyWith(_$_LearningPathListLoad value,
          $Res Function(_$_LearningPathListLoad) then) =
      __$$_LearningPathListLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LearningPathListLoadCopyWithImpl<$Res>
    extends _$LearningPathListEventCopyWithImpl<$Res, _$_LearningPathListLoad>
    implements _$$_LearningPathListLoadCopyWith<$Res> {
  __$$_LearningPathListLoadCopyWithImpl(_$_LearningPathListLoad _value,
      $Res Function(_$_LearningPathListLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LearningPathListLoad implements _LearningPathListLoad {
  const _$_LearningPathListLoad();

  @override
  String toString() {
    return 'LearningPathListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LearningPathListLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) select,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? select,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? select,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelect value) select,
    required TResult Function(_LearningPathListLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelect value)? select,
    TResult? Function(_LearningPathListLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelect value)? select,
    TResult Function(_LearningPathListLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LearningPathListLoad implements LearningPathListEvent {
  const factory _LearningPathListLoad() = _$_LearningPathListLoad;
}

/// @nodoc
mixin _$LearningPathListState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;
  List<dynamic> get learningPaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningPathListStateCopyWith<LearningPathListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathListStateCopyWith<$Res> {
  factory $LearningPathListStateCopyWith(LearningPathListState value,
          $Res Function(LearningPathListState) then) =
      _$LearningPathListStateCopyWithImpl<$Res, LearningPathListState>;
  @useResult
  $Res call({bool isLoading, String? selectedId, List<dynamic> learningPaths});
}

/// @nodoc
class _$LearningPathListStateCopyWithImpl<$Res,
        $Val extends LearningPathListState>
    implements $LearningPathListStateCopyWith<$Res> {
  _$LearningPathListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedId = freezed,
    Object? learningPaths = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      learningPaths: null == learningPaths
          ? _value.learningPaths
          : learningPaths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$$LearningPathListStateCopyWith<$Res>
    implements $LearningPathListStateCopyWith<$Res> {
  factory _$$$$LearningPathListStateCopyWith(_$$$LearningPathListState value,
          $Res Function(_$$$LearningPathListState) then) =
      __$$$$LearningPathListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? selectedId, List<dynamic> learningPaths});
}

/// @nodoc
class __$$$$LearningPathListStateCopyWithImpl<$Res>
    extends _$LearningPathListStateCopyWithImpl<$Res, _$$$LearningPathListState>
    implements _$$$$LearningPathListStateCopyWith<$Res> {
  __$$$$LearningPathListStateCopyWithImpl(_$$$LearningPathListState _value,
      $Res Function(_$$$LearningPathListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedId = freezed,
    Object? learningPaths = null,
  }) {
    return _then(_$$$LearningPathListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      learningPaths: null == learningPaths
          ? _value._learningPaths
          : learningPaths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$$$LearningPathListState implements $$LearningPathListState {
  const _$$$LearningPathListState(
      {this.isLoading = true,
      this.selectedId = null,
      final List<dynamic> learningPaths = const []})
      : _learningPaths = learningPaths;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? selectedId;
  final List<dynamic> _learningPaths;
  @override
  @JsonKey()
  List<dynamic> get learningPaths {
    if (_learningPaths is EqualUnmodifiableListView) return _learningPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learningPaths);
  }

  @override
  String toString() {
    return 'LearningPathListState(isLoading: $isLoading, selectedId: $selectedId, learningPaths: $learningPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$$LearningPathListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedId, selectedId) ||
                other.selectedId == selectedId) &&
            const DeepCollectionEquality()
                .equals(other._learningPaths, _learningPaths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, selectedId,
      const DeepCollectionEquality().hash(_learningPaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$$LearningPathListStateCopyWith<_$$$LearningPathListState> get copyWith =>
      __$$$$LearningPathListStateCopyWithImpl<_$$$LearningPathListState>(
          this, _$identity);
}

abstract class $$LearningPathListState implements LearningPathListState {
  const factory $$LearningPathListState(
      {final bool isLoading,
      final String? selectedId,
      final List<dynamic> learningPaths}) = _$$$LearningPathListState;

  @override
  bool get isLoading;
  @override
  String? get selectedId;
  @override
  List<dynamic> get learningPaths;
  @override
  @JsonKey(ignore: true)
  _$$$$LearningPathListStateCopyWith<_$$$LearningPathListState> get copyWith =>
      throw _privateConstructorUsedError;
}
