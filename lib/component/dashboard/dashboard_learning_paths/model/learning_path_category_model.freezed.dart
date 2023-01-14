// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_path_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningPathCategory _$LearningPathCategoryFromJson(Map<String, dynamic> json) {
  return _LearningPathCategory.fromJson(json);
}

/// @nodoc
mixin _$LearningPathCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<LearningPathSummary?> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathCategoryCopyWith<LearningPathCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathCategoryCopyWith<$Res> {
  factory $LearningPathCategoryCopyWith(LearningPathCategory value,
          $Res Function(LearningPathCategory) then) =
      _$LearningPathCategoryCopyWithImpl<$Res, LearningPathCategory>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      List<LearningPathSummary?> items});
}

/// @nodoc
class _$LearningPathCategoryCopyWithImpl<$Res,
        $Val extends LearningPathCategory>
    implements $LearningPathCategoryCopyWith<$Res> {
  _$LearningPathCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LearningPathSummary?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathCategoryCopyWith<$Res>
    implements $LearningPathCategoryCopyWith<$Res> {
  factory _$$_LearningPathCategoryCopyWith(_$_LearningPathCategory value,
          $Res Function(_$_LearningPathCategory) then) =
      __$$_LearningPathCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      List<LearningPathSummary?> items});
}

/// @nodoc
class __$$_LearningPathCategoryCopyWithImpl<$Res>
    extends _$LearningPathCategoryCopyWithImpl<$Res, _$_LearningPathCategory>
    implements _$$_LearningPathCategoryCopyWith<$Res> {
  __$$_LearningPathCategoryCopyWithImpl(_$_LearningPathCategory _value,
      $Res Function(_$_LearningPathCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? items = null,
  }) {
    return _then(_$_LearningPathCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LearningPathSummary?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathCategory implements _LearningPathCategory {
  const _$_LearningPathCategory(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required final List<LearningPathSummary?> items})
      : _items = items;

  factory _$_LearningPathCategory.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathCategoryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String summary;
  final List<LearningPathSummary?> _items;
  @override
  List<LearningPathSummary?> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'LearningPathCategory(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, summary,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathCategoryCopyWith<_$_LearningPathCategory> get copyWith =>
      __$$_LearningPathCategoryCopyWithImpl<_$_LearningPathCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathCategoryToJson(
      this,
    );
  }
}

abstract class _LearningPathCategory implements LearningPathCategory {
  const factory _LearningPathCategory(
          {required final String id,
          required final String title,
          required final String thumbnail,
          required final String summary,
          required final List<LearningPathSummary?> items}) =
      _$_LearningPathCategory;

  factory _LearningPathCategory.fromJson(Map<String, dynamic> json) =
      _$_LearningPathCategory.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get summary;
  @override
  List<LearningPathSummary?> get items;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathCategoryCopyWith<_$_LearningPathCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathSummary _$LearningPathSummaryFromJson(Map<String, dynamic> json) {
  return _LearningPathSummary.fromJson(json);
}

/// @nodoc
mixin _$LearningPathSummary {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathSummaryCopyWith<LearningPathSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathSummaryCopyWith<$Res> {
  factory $LearningPathSummaryCopyWith(
          LearningPathSummary value, $Res Function(LearningPathSummary) then) =
      _$LearningPathSummaryCopyWithImpl<$Res, LearningPathSummary>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      double score});
}

/// @nodoc
class _$LearningPathSummaryCopyWithImpl<$Res, $Val extends LearningPathSummary>
    implements $LearningPathSummaryCopyWith<$Res> {
  _$LearningPathSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathSummaryCopyWith<$Res>
    implements $LearningPathSummaryCopyWith<$Res> {
  factory _$$_LearningPathSummaryCopyWith(_$_LearningPathSummary value,
          $Res Function(_$_LearningPathSummary) then) =
      __$$_LearningPathSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      double score});
}

/// @nodoc
class __$$_LearningPathSummaryCopyWithImpl<$Res>
    extends _$LearningPathSummaryCopyWithImpl<$Res, _$_LearningPathSummary>
    implements _$$_LearningPathSummaryCopyWith<$Res> {
  __$$_LearningPathSummaryCopyWithImpl(_$_LearningPathSummary _value,
      $Res Function(_$_LearningPathSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? score = null,
  }) {
    return _then(_$_LearningPathSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathSummary implements _LearningPathSummary {
  const _$_LearningPathSummary(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required this.score});

  factory _$_LearningPathSummary.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathSummaryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String summary;
  @override
  final double score;

  @override
  String toString() {
    return 'LearningPathSummary(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, thumbnail, summary, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathSummaryCopyWith<_$_LearningPathSummary> get copyWith =>
      __$$_LearningPathSummaryCopyWithImpl<_$_LearningPathSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathSummaryToJson(
      this,
    );
  }
}

abstract class _LearningPathSummary implements LearningPathSummary {
  const factory _LearningPathSummary(
      {required final String id,
      required final String title,
      required final String thumbnail,
      required final String summary,
      required final double score}) = _$_LearningPathSummary;

  factory _LearningPathSummary.fromJson(Map<String, dynamic> json) =
      _$_LearningPathSummary.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get summary;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathSummaryCopyWith<_$_LearningPathSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
