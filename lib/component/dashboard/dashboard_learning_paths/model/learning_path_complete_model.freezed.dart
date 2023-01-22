// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_path_complete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningPathComplete _$LearningPathCompleteFromJson(Map<String, dynamic> json) {
  return _LearningPathComplete.fromJson(json);
}

/// @nodoc
mixin _$LearningPathComplete {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  Counts? get counts => throw _privateConstructorUsedError;
  List<LearningPathStep?>? get steps => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathCompleteCopyWith<LearningPathComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathCompleteCopyWith<$Res> {
  factory $LearningPathCompleteCopyWith(LearningPathComplete value,
          $Res Function(LearningPathComplete) then) =
      _$LearningPathCompleteCopyWithImpl<$Res, LearningPathComplete>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? summary,
      int? score,
      String? duration,
      Counts? counts,
      List<LearningPathStep?>? steps,
      Author? author,
      DateTime? createdAt,
      DateTime? updatedAt});

  $CountsCopyWith<$Res>? get counts;
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$LearningPathCompleteCopyWithImpl<$Res,
        $Val extends LearningPathComplete>
    implements $LearningPathCompleteCopyWith<$Res> {
  _$LearningPathCompleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? summary = freezed,
    Object? score = freezed,
    Object? duration = freezed,
    Object? counts = freezed,
    Object? steps = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      counts: freezed == counts
          ? _value.counts
          : counts // ignore: cast_nullable_to_non_nullable
              as Counts?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LearningPathStep?>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountsCopyWith<$Res>? get counts {
    if (_value.counts == null) {
      return null;
    }

    return $CountsCopyWith<$Res>(_value.counts!, (value) {
      return _then(_value.copyWith(counts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LearningPathCompleteCopyWith<$Res>
    implements $LearningPathCompleteCopyWith<$Res> {
  factory _$$_LearningPathCompleteCopyWith(_$_LearningPathComplete value,
          $Res Function(_$_LearningPathComplete) then) =
      __$$_LearningPathCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? summary,
      int? score,
      String? duration,
      Counts? counts,
      List<LearningPathStep?>? steps,
      Author? author,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $CountsCopyWith<$Res>? get counts;
  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$_LearningPathCompleteCopyWithImpl<$Res>
    extends _$LearningPathCompleteCopyWithImpl<$Res, _$_LearningPathComplete>
    implements _$$_LearningPathCompleteCopyWith<$Res> {
  __$$_LearningPathCompleteCopyWithImpl(_$_LearningPathComplete _value,
      $Res Function(_$_LearningPathComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? summary = freezed,
    Object? score = freezed,
    Object? duration = freezed,
    Object? counts = freezed,
    Object? steps = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LearningPathComplete(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      counts: freezed == counts
          ? _value.counts
          : counts // ignore: cast_nullable_to_non_nullable
              as Counts?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LearningPathStep?>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathComplete implements _LearningPathComplete {
  const _$_LearningPathComplete(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required this.score,
      required this.duration,
      required this.counts,
      required final List<LearningPathStep?>? steps,
      required this.author,
      required this.createdAt,
      required this.updatedAt})
      : _steps = steps;

  factory _$_LearningPathComplete.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathCompleteFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? summary;
  @override
  final int? score;
  @override
  final String? duration;
  @override
  final Counts? counts;
  final List<LearningPathStep?>? _steps;
  @override
  List<LearningPathStep?>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Author? author;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LearningPathComplete(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, score: $score, duration: $duration, counts: $counts, steps: $steps, author: $author, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathComplete &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.counts, counts) || other.counts == counts) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      thumbnail,
      summary,
      score,
      duration,
      counts,
      const DeepCollectionEquality().hash(_steps),
      author,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathCompleteCopyWith<_$_LearningPathComplete> get copyWith =>
      __$$_LearningPathCompleteCopyWithImpl<_$_LearningPathComplete>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathCompleteToJson(
      this,
    );
  }
}

abstract class _LearningPathComplete implements LearningPathComplete {
  const factory _LearningPathComplete(
      {required final String? id,
      required final String? title,
      required final String? thumbnail,
      required final String? summary,
      required final int? score,
      required final String? duration,
      required final Counts? counts,
      required final List<LearningPathStep?>? steps,
      required final Author? author,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$_LearningPathComplete;

  factory _LearningPathComplete.fromJson(Map<String, dynamic> json) =
      _$_LearningPathComplete.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get summary;
  @override
  int? get score;
  @override
  String? get duration;
  @override
  Counts? get counts;
  @override
  List<LearningPathStep?>? get steps;
  @override
  Author? get author;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathCompleteCopyWith<_$_LearningPathComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<String?>? get expertise => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? name,
      String? bio,
      String? email,
      List<String?>? expertise,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? email = freezed,
    Object? expertise = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? name,
      String? bio,
      String? email,
      List<String?>? expertise,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$_Author>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? email = freezed,
    Object? expertise = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Author(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value._expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author implements _Author {
  const _$_Author(
      {required this.id,
      required this.username,
      required this.name,
      required this.bio,
      required this.email,
      required final List<String?>? expertise,
      required this.createdAt,
      required this.updatedAt})
      : _expertise = expertise;

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? bio;
  @override
  final String? email;
  final List<String?>? _expertise;
  @override
  List<String?>? get expertise {
    final value = _expertise;
    if (value == null) return null;
    if (_expertise is EqualUnmodifiableListView) return _expertise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Author(id: $id, username: $username, name: $name, bio: $bio, email: $email, expertise: $expertise, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._expertise, _expertise) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, name, bio, email,
      const DeepCollectionEquality().hash(_expertise), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required final String? id,
      required final String? username,
      required final String? name,
      required final String? bio,
      required final String? email,
      required final List<String?>? expertise,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String? get id;
  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get bio;
  @override
  String? get email;
  @override
  List<String?>? get expertise;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}

Counts _$CountsFromJson(Map<String, dynamic> json) {
  return _Counts.fromJson(json);
}

/// @nodoc
mixin _$Counts {
  int? get steps => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  int? get notLikes => throw _privateConstructorUsedError;
  int? get forks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountsCopyWith<Counts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountsCopyWith<$Res> {
  factory $CountsCopyWith(Counts value, $Res Function(Counts) then) =
      _$CountsCopyWithImpl<$Res, Counts>;
  @useResult
  $Res call({int? steps, int? likes, int? notLikes, int? forks});
}

/// @nodoc
class _$CountsCopyWithImpl<$Res, $Val extends Counts>
    implements $CountsCopyWith<$Res> {
  _$CountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? likes = freezed,
    Object? notLikes = freezed,
    Object? forks = freezed,
  }) {
    return _then(_value.copyWith(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      notLikes: freezed == notLikes
          ? _value.notLikes
          : notLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountsCopyWith<$Res> implements $CountsCopyWith<$Res> {
  factory _$$_CountsCopyWith(_$_Counts value, $Res Function(_$_Counts) then) =
      __$$_CountsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? steps, int? likes, int? notLikes, int? forks});
}

/// @nodoc
class __$$_CountsCopyWithImpl<$Res>
    extends _$CountsCopyWithImpl<$Res, _$_Counts>
    implements _$$_CountsCopyWith<$Res> {
  __$$_CountsCopyWithImpl(_$_Counts _value, $Res Function(_$_Counts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? likes = freezed,
    Object? notLikes = freezed,
    Object? forks = freezed,
  }) {
    return _then(_$_Counts(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      notLikes: freezed == notLikes
          ? _value.notLikes
          : notLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Counts implements _Counts {
  const _$_Counts(
      {required this.steps,
      required this.likes,
      required this.notLikes,
      required this.forks});

  factory _$_Counts.fromJson(Map<String, dynamic> json) =>
      _$$_CountsFromJson(json);

  @override
  final int? steps;
  @override
  final int? likes;
  @override
  final int? notLikes;
  @override
  final int? forks;

  @override
  String toString() {
    return 'Counts(steps: $steps, likes: $likes, notLikes: $notLikes, forks: $forks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Counts &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.notLikes, notLikes) ||
                other.notLikes == notLikes) &&
            (identical(other.forks, forks) || other.forks == forks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, steps, likes, notLikes, forks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountsCopyWith<_$_Counts> get copyWith =>
      __$$_CountsCopyWithImpl<_$_Counts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountsToJson(
      this,
    );
  }
}

abstract class _Counts implements Counts {
  const factory _Counts(
      {required final int? steps,
      required final int? likes,
      required final int? notLikes,
      required final int? forks}) = _$_Counts;

  factory _Counts.fromJson(Map<String, dynamic> json) = _$_Counts.fromJson;

  @override
  int? get steps;
  @override
  int? get likes;
  @override
  int? get notLikes;
  @override
  int? get forks;
  @override
  @JsonKey(ignore: true)
  _$$_CountsCopyWith<_$_Counts> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathStep _$LearningPathStepFromJson(Map<String, dynamic> json) {
  return _LearningPathStep.fromJson(json);
}

/// @nodoc
mixin _$LearningPathStep {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get htmlContent => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathStepCopyWith<LearningPathStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathStepCopyWith<$Res> {
  factory $LearningPathStepCopyWith(
          LearningPathStep value, $Res Function(LearningPathStep) then) =
      _$LearningPathStepCopyWithImpl<$Res, LearningPathStep>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      String htmlContent,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$LearningPathStepCopyWithImpl<$Res, $Val extends LearningPathStep>
    implements $LearningPathStepCopyWith<$Res> {
  _$LearningPathStepCopyWithImpl(this._value, this._then);

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
    Object? htmlContent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathStepCopyWith<$Res>
    implements $LearningPathStepCopyWith<$Res> {
  factory _$$_LearningPathStepCopyWith(
          _$_LearningPathStep value, $Res Function(_$_LearningPathStep) then) =
      __$$_LearningPathStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      String htmlContent,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_LearningPathStepCopyWithImpl<$Res>
    extends _$LearningPathStepCopyWithImpl<$Res, _$_LearningPathStep>
    implements _$$_LearningPathStepCopyWith<$Res> {
  __$$_LearningPathStepCopyWithImpl(
      _$_LearningPathStep _value, $Res Function(_$_LearningPathStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? htmlContent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_LearningPathStep(
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
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathStep implements _LearningPathStep {
  const _$_LearningPathStep(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required this.htmlContent,
      required this.createdAt,
      required this.updatedAt});

  factory _$_LearningPathStep.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathStepFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String summary;
  @override
  final String htmlContent;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LearningPathStep(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, htmlContent: $htmlContent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathStep &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, summary,
      htmlContent, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathStepCopyWith<_$_LearningPathStep> get copyWith =>
      __$$_LearningPathStepCopyWithImpl<_$_LearningPathStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathStepToJson(
      this,
    );
  }
}

abstract class _LearningPathStep implements LearningPathStep {
  const factory _LearningPathStep(
      {required final String id,
      required final String title,
      required final String thumbnail,
      required final String summary,
      required final String htmlContent,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_LearningPathStep;

  factory _LearningPathStep.fromJson(Map<String, dynamic> json) =
      _$_LearningPathStep.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get summary;
  @override
  String get htmlContent;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathStepCopyWith<_$_LearningPathStep> get copyWith =>
      throw _privateConstructorUsedError;
}
