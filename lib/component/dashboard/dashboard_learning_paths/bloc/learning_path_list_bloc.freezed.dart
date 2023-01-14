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
    required TResult Function(String id) selectLearningPath,
    required TResult Function(String id) loadSelectLearningPath,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? selectLearningPath,
    TResult? Function(String id)? loadSelectLearningPath,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? selectLearningPath,
    TResult Function(String id)? loadSelectLearningPath,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelectLearningPath value)
        selectLearningPath,
    required TResult Function(_LearningPathListLoadSelectLearningPath value)
        loadSelectLearningPath,
    required TResult Function(_LearningPathListLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult? Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult? Function(_LearningPathListLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
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
abstract class _$$_LearningPathListSelectLearningPathCopyWith<$Res> {
  factory _$$_LearningPathListSelectLearningPathCopyWith(
          _$_LearningPathListSelectLearningPath value,
          $Res Function(_$_LearningPathListSelectLearningPath) then) =
      __$$_LearningPathListSelectLearningPathCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_LearningPathListSelectLearningPathCopyWithImpl<$Res>
    extends _$LearningPathListEventCopyWithImpl<$Res,
        _$_LearningPathListSelectLearningPath>
    implements _$$_LearningPathListSelectLearningPathCopyWith<$Res> {
  __$$_LearningPathListSelectLearningPathCopyWithImpl(
      _$_LearningPathListSelectLearningPath _value,
      $Res Function(_$_LearningPathListSelectLearningPath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_LearningPathListSelectLearningPath(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LearningPathListSelectLearningPath
    implements _LearningPathListSelectLearningPath {
  const _$_LearningPathListSelectLearningPath(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'LearningPathListEvent.selectLearningPath(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathListSelectLearningPath &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathListSelectLearningPathCopyWith<
          _$_LearningPathListSelectLearningPath>
      get copyWith => __$$_LearningPathListSelectLearningPathCopyWithImpl<
          _$_LearningPathListSelectLearningPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) selectLearningPath,
    required TResult Function(String id) loadSelectLearningPath,
    required TResult Function() load,
  }) {
    return selectLearningPath(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? selectLearningPath,
    TResult? Function(String id)? loadSelectLearningPath,
    TResult? Function()? load,
  }) {
    return selectLearningPath?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? selectLearningPath,
    TResult Function(String id)? loadSelectLearningPath,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (selectLearningPath != null) {
      return selectLearningPath(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelectLearningPath value)
        selectLearningPath,
    required TResult Function(_LearningPathListLoadSelectLearningPath value)
        loadSelectLearningPath,
    required TResult Function(_LearningPathListLoad value) load,
  }) {
    return selectLearningPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult? Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult? Function(_LearningPathListLoad value)? load,
  }) {
    return selectLearningPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult Function(_LearningPathListLoad value)? load,
    required TResult orElse(),
  }) {
    if (selectLearningPath != null) {
      return selectLearningPath(this);
    }
    return orElse();
  }
}

abstract class _LearningPathListSelectLearningPath
    implements LearningPathListEvent {
  const factory _LearningPathListSelectLearningPath(final String id) =
      _$_LearningPathListSelectLearningPath;

  String get id;
  @JsonKey(ignore: true)
  _$$_LearningPathListSelectLearningPathCopyWith<
          _$_LearningPathListSelectLearningPath>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LearningPathListLoadSelectLearningPathCopyWith<$Res> {
  factory _$$_LearningPathListLoadSelectLearningPathCopyWith(
          _$_LearningPathListLoadSelectLearningPath value,
          $Res Function(_$_LearningPathListLoadSelectLearningPath) then) =
      __$$_LearningPathListLoadSelectLearningPathCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_LearningPathListLoadSelectLearningPathCopyWithImpl<$Res>
    extends _$LearningPathListEventCopyWithImpl<$Res,
        _$_LearningPathListLoadSelectLearningPath>
    implements _$$_LearningPathListLoadSelectLearningPathCopyWith<$Res> {
  __$$_LearningPathListLoadSelectLearningPathCopyWithImpl(
      _$_LearningPathListLoadSelectLearningPath _value,
      $Res Function(_$_LearningPathListLoadSelectLearningPath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_LearningPathListLoadSelectLearningPath(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LearningPathListLoadSelectLearningPath
    implements _LearningPathListLoadSelectLearningPath {
  const _$_LearningPathListLoadSelectLearningPath(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'LearningPathListEvent.loadSelectLearningPath(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathListLoadSelectLearningPath &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathListLoadSelectLearningPathCopyWith<
          _$_LearningPathListLoadSelectLearningPath>
      get copyWith => __$$_LearningPathListLoadSelectLearningPathCopyWithImpl<
          _$_LearningPathListLoadSelectLearningPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) selectLearningPath,
    required TResult Function(String id) loadSelectLearningPath,
    required TResult Function() load,
  }) {
    return loadSelectLearningPath(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? selectLearningPath,
    TResult? Function(String id)? loadSelectLearningPath,
    TResult? Function()? load,
  }) {
    return loadSelectLearningPath?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? selectLearningPath,
    TResult Function(String id)? loadSelectLearningPath,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (loadSelectLearningPath != null) {
      return loadSelectLearningPath(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningPathListSelectLearningPath value)
        selectLearningPath,
    required TResult Function(_LearningPathListLoadSelectLearningPath value)
        loadSelectLearningPath,
    required TResult Function(_LearningPathListLoad value) load,
  }) {
    return loadSelectLearningPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult? Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult? Function(_LearningPathListLoad value)? load,
  }) {
    return loadSelectLearningPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult Function(_LearningPathListLoad value)? load,
    required TResult orElse(),
  }) {
    if (loadSelectLearningPath != null) {
      return loadSelectLearningPath(this);
    }
    return orElse();
  }
}

abstract class _LearningPathListLoadSelectLearningPath
    implements LearningPathListEvent {
  const factory _LearningPathListLoadSelectLearningPath(final String id) =
      _$_LearningPathListLoadSelectLearningPath;

  String get id;
  @JsonKey(ignore: true)
  _$$_LearningPathListLoadSelectLearningPathCopyWith<
          _$_LearningPathListLoadSelectLearningPath>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String id) selectLearningPath,
    required TResult Function(String id) loadSelectLearningPath,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? selectLearningPath,
    TResult? Function(String id)? loadSelectLearningPath,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? selectLearningPath,
    TResult Function(String id)? loadSelectLearningPath,
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
    required TResult Function(_LearningPathListSelectLearningPath value)
        selectLearningPath,
    required TResult Function(_LearningPathListLoadSelectLearningPath value)
        loadSelectLearningPath,
    required TResult Function(_LearningPathListLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult? Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
    TResult? Function(_LearningPathListLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningPathListSelectLearningPath value)?
        selectLearningPath,
    TResult Function(_LearningPathListLoadSelectLearningPath value)?
        loadSelectLearningPath,
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
  String? get selectedLearningPathId => throw _privateConstructorUsedError;
  LearningPathSummary? get selectedLearningPath =>
      throw _privateConstructorUsedError;
  String? get learningPathCategoriesPageTitle =>
      throw _privateConstructorUsedError;
  List<LearningPathCategory> get learningPathCategories =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {bool isLoading,
      String? selectedLearningPathId,
      LearningPathSummary? selectedLearningPath,
      String? learningPathCategoriesPageTitle,
      List<LearningPathCategory> learningPathCategories,
      List<dynamic> learningPaths});

  $LearningPathSummaryCopyWith<$Res>? get selectedLearningPath;
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
    Object? selectedLearningPathId = freezed,
    Object? selectedLearningPath = freezed,
    Object? learningPathCategoriesPageTitle = freezed,
    Object? learningPathCategories = null,
    Object? learningPaths = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLearningPathId: freezed == selectedLearningPathId
          ? _value.selectedLearningPathId
          : selectedLearningPathId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLearningPath: freezed == selectedLearningPath
          ? _value.selectedLearningPath
          : selectedLearningPath // ignore: cast_nullable_to_non_nullable
              as LearningPathSummary?,
      learningPathCategoriesPageTitle: freezed ==
              learningPathCategoriesPageTitle
          ? _value.learningPathCategoriesPageTitle
          : learningPathCategoriesPageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      learningPathCategories: null == learningPathCategories
          ? _value.learningPathCategories
          : learningPathCategories // ignore: cast_nullable_to_non_nullable
              as List<LearningPathCategory>,
      learningPaths: null == learningPaths
          ? _value.learningPaths
          : learningPaths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPathSummaryCopyWith<$Res>? get selectedLearningPath {
    if (_value.selectedLearningPath == null) {
      return null;
    }

    return $LearningPathSummaryCopyWith<$Res>(_value.selectedLearningPath!,
        (value) {
      return _then(_value.copyWith(selectedLearningPath: value) as $Val);
    });
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
  $Res call(
      {bool isLoading,
      String? selectedLearningPathId,
      LearningPathSummary? selectedLearningPath,
      String? learningPathCategoriesPageTitle,
      List<LearningPathCategory> learningPathCategories,
      List<dynamic> learningPaths});

  @override
  $LearningPathSummaryCopyWith<$Res>? get selectedLearningPath;
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
    Object? selectedLearningPathId = freezed,
    Object? selectedLearningPath = freezed,
    Object? learningPathCategoriesPageTitle = freezed,
    Object? learningPathCategories = null,
    Object? learningPaths = null,
  }) {
    return _then(_$$$LearningPathListState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLearningPathId: freezed == selectedLearningPathId
          ? _value.selectedLearningPathId
          : selectedLearningPathId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLearningPath: freezed == selectedLearningPath
          ? _value.selectedLearningPath
          : selectedLearningPath // ignore: cast_nullable_to_non_nullable
              as LearningPathSummary?,
      learningPathCategoriesPageTitle: freezed ==
              learningPathCategoriesPageTitle
          ? _value.learningPathCategoriesPageTitle
          : learningPathCategoriesPageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      learningPathCategories: null == learningPathCategories
          ? _value._learningPathCategories
          : learningPathCategories // ignore: cast_nullable_to_non_nullable
              as List<LearningPathCategory>,
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
      this.selectedLearningPathId = null,
      this.selectedLearningPath = null,
      this.learningPathCategoriesPageTitle = 'Learning Path Categories!',
      final List<LearningPathCategory> learningPathCategories = const [],
      final List<dynamic> learningPaths = const []})
      : _learningPathCategories = learningPathCategories,
        _learningPaths = learningPaths;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? selectedLearningPathId;
  @override
  @JsonKey()
  final LearningPathSummary? selectedLearningPath;
  @override
  @JsonKey()
  final String? learningPathCategoriesPageTitle;
  final List<LearningPathCategory> _learningPathCategories;
  @override
  @JsonKey()
  List<LearningPathCategory> get learningPathCategories {
    if (_learningPathCategories is EqualUnmodifiableListView)
      return _learningPathCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learningPathCategories);
  }

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
    return 'LearningPathListState(isLoading: $isLoading, selectedLearningPathId: $selectedLearningPathId, selectedLearningPath: $selectedLearningPath, learningPathCategoriesPageTitle: $learningPathCategoriesPageTitle, learningPathCategories: $learningPathCategories, learningPaths: $learningPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$$LearningPathListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedLearningPathId, selectedLearningPathId) ||
                other.selectedLearningPathId == selectedLearningPathId) &&
            (identical(other.selectedLearningPath, selectedLearningPath) ||
                other.selectedLearningPath == selectedLearningPath) &&
            (identical(other.learningPathCategoriesPageTitle,
                    learningPathCategoriesPageTitle) ||
                other.learningPathCategoriesPageTitle ==
                    learningPathCategoriesPageTitle) &&
            const DeepCollectionEquality().equals(
                other._learningPathCategories, _learningPathCategories) &&
            const DeepCollectionEquality()
                .equals(other._learningPaths, _learningPaths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      selectedLearningPathId,
      selectedLearningPath,
      learningPathCategoriesPageTitle,
      const DeepCollectionEquality().hash(_learningPathCategories),
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
      final String? selectedLearningPathId,
      final LearningPathSummary? selectedLearningPath,
      final String? learningPathCategoriesPageTitle,
      final List<LearningPathCategory> learningPathCategories,
      final List<dynamic> learningPaths}) = _$$$LearningPathListState;

  @override
  bool get isLoading;
  @override
  String? get selectedLearningPathId;
  @override
  LearningPathSummary? get selectedLearningPath;
  @override
  String? get learningPathCategoriesPageTitle;
  @override
  List<LearningPathCategory> get learningPathCategories;
  @override
  List<dynamic> get learningPaths;
  @override
  @JsonKey(ignore: true)
  _$$$$LearningPathListStateCopyWith<_$$$LearningPathListState> get copyWith =>
      throw _privateConstructorUsedError;
}
