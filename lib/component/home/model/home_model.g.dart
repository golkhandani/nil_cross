// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      banner: Banner.fromJson(json['banner'] as Map<String, dynamic>),
      about: About.fromJson(json['about'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'banner': instance.banner,
      'about': instance.about,
    };

_$_About _$$_AboutFromJson(Map<String, dynamic> json) => _$_About(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_AboutToJson(_$_About instance) => <String, dynamic>{
      'text': instance.text,
    };

_$_Banner _$$_BannerFromJson(Map<String, dynamic> json) => _$_Banner(
      type: $enumDecode(_$BannerTypeEnumMap, json['type']),
      image: json['image'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => Action.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'type': _$BannerTypeEnumMap[instance.type]!,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'actions': instance.actions,
    };

const _$BannerTypeEnumMap = {
  BannerType.image: 'image',
  BannerType.video: 'video',
};

_$_Action _$$_ActionFromJson(Map<String, dynamic> json) => _$_Action(
      uri: json['uri'] as String,
      type: $enumDecode(_$ActionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ActionToJson(_$_Action instance) => <String, dynamic>{
      'uri': instance.uri,
      'type': _$ActionTypeEnumMap[instance.type]!,
    };

const _$ActionTypeEnumMap = {
  ActionType.general: 'general',
  ActionType.danger: 'danger',
  ActionType.warning: 'warning',
};
