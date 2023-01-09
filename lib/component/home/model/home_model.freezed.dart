// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  Banner get banner => throw _privateConstructorUsedError;
  About get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call({Banner banner, About about});

  $BannerCopyWith<$Res> get banner;
  $AboutCopyWith<$Res> get about;
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? about = null,
  }) {
    return _then(_value.copyWith(
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as About,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerCopyWith<$Res> get banner {
    return $BannerCopyWith<$Res>(_value.banner, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutCopyWith<$Res> get about {
    return $AboutCopyWith<$Res>(_value.about, (value) {
      return _then(_value.copyWith(about: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Banner banner, About about});

  @override
  $BannerCopyWith<$Res> get banner;
  @override
  $AboutCopyWith<$Res> get about;
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? about = null,
  }) {
    return _then(_$_Home(
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as About,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Home implements _Home {
  const _$_Home({required this.banner, required this.about});

  factory _$_Home.fromJson(Map<String, dynamic> json) => _$$_HomeFromJson(json);

  @override
  final Banner banner;
  @override
  final About about;

  @override
  String toString() {
    return 'Home(banner: $banner, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.about, about) || other.about == about));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, banner, about);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {required final Banner banner, required final About about}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override
  Banner get banner;
  @override
  About get about;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}

About _$AboutFromJson(Map<String, dynamic> json) {
  return _About.fromJson(json);
}

/// @nodoc
mixin _$About {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutCopyWith<About> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCopyWith<$Res> {
  factory $AboutCopyWith(About value, $Res Function(About) then) =
      _$AboutCopyWithImpl<$Res, About>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$AboutCopyWithImpl<$Res, $Val extends About>
    implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$$_AboutCopyWith(_$_About value, $Res Function(_$_About) then) =
      __$$_AboutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_AboutCopyWithImpl<$Res> extends _$AboutCopyWithImpl<$Res, _$_About>
    implements _$$_AboutCopyWith<$Res> {
  __$$_AboutCopyWithImpl(_$_About _value, $Res Function(_$_About) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_About(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_About implements _About {
  const _$_About({required this.text});

  factory _$_About.fromJson(Map<String, dynamic> json) =>
      _$$_AboutFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'About(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_About &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutCopyWith<_$_About> get copyWith =>
      __$$_AboutCopyWithImpl<_$_About>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutToJson(
      this,
    );
  }
}

abstract class _About implements About {
  const factory _About({required final String text}) = _$_About;

  factory _About.fromJson(Map<String, dynamic> json) = _$_About.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AboutCopyWith<_$_About> get copyWith =>
      throw _privateConstructorUsedError;
}

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  BannerType get type => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Action> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
  @useResult
  $Res call(
      {BannerType type,
      String image,
      String title,
      String description,
      List<Action> actions});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BannerType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$_BannerCopyWith(_$_Banner value, $Res Function(_$_Banner) then) =
      __$$_BannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannerType type,
      String image,
      String title,
      String description,
      List<Action> actions});
}

/// @nodoc
class __$$_BannerCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$_Banner>
    implements _$$_BannerCopyWith<$Res> {
  __$$_BannerCopyWithImpl(_$_Banner _value, $Res Function(_$_Banner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? actions = null,
  }) {
    return _then(_$_Banner(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BannerType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Banner implements _Banner {
  const _$_Banner(
      {required this.type,
      required this.image,
      required this.title,
      required this.description,
      required final List<Action> actions})
      : _actions = actions;

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$$_BannerFromJson(json);

  @override
  final BannerType type;
  @override
  final String image;
  @override
  final String title;
  @override
  final String description;
  final List<Action> _actions;
  @override
  List<Action> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'Banner(type: $type, image: $image, title: $title, description: $description, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Banner &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, image, title, description,
      const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      __$$_BannerCopyWithImpl<_$_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  const factory _Banner(
      {required final BannerType type,
      required final String image,
      required final String title,
      required final String description,
      required final List<Action> actions}) = _$_Banner;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  BannerType get type;
  @override
  String get image;
  @override
  String get title;
  @override
  String get description;
  @override
  List<Action> get actions;
  @override
  @JsonKey(ignore: true)
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      throw _privateConstructorUsedError;
}

Action _$ActionFromJson(Map<String, dynamic> json) {
  return _Action.fromJson(json);
}

/// @nodoc
mixin _$Action {
  String get uri => throw _privateConstructorUsedError;
  ActionType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionCopyWith<Action> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res, Action>;
  @useResult
  $Res call({String uri, ActionType type});
}

/// @nodoc
class _$ActionCopyWithImpl<$Res, $Val extends Action>
    implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$_ActionCopyWith(_$_Action value, $Res Function(_$_Action) then) =
      __$$_ActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, ActionType type});
}

/// @nodoc
class __$$_ActionCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$_Action>
    implements _$$_ActionCopyWith<$Res> {
  __$$_ActionCopyWithImpl(_$_Action _value, $Res Function(_$_Action) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? type = null,
  }) {
    return _then(_$_Action(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Action implements _Action {
  const _$_Action({required this.uri, required this.type});

  factory _$_Action.fromJson(Map<String, dynamic> json) =>
      _$$_ActionFromJson(json);

  @override
  final String uri;
  @override
  final ActionType type;

  @override
  String toString() {
    return 'Action(uri: $uri, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Action &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCopyWith<_$_Action> get copyWith =>
      __$$_ActionCopyWithImpl<_$_Action>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionToJson(
      this,
    );
  }
}

abstract class _Action implements Action {
  const factory _Action(
      {required final String uri, required final ActionType type}) = _$_Action;

  factory _Action.fromJson(Map<String, dynamic> json) = _$_Action.fromJson;

  @override
  String get uri;
  @override
  ActionType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ActionCopyWith<_$_Action> get copyWith =>
      throw _privateConstructorUsedError;
}
