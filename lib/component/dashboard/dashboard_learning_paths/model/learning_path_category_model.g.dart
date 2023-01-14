// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_path_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPathCategory _$$_LearningPathCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPathCategory(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : LearningPathSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathCategoryToJson(
        _$_LearningPathCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'items': instance.items,
    };

_$_LearningPathSummary _$$_LearningPathSummaryFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPathSummary(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LearningPathSummaryToJson(
        _$_LearningPathSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'score': instance.score,
    };
