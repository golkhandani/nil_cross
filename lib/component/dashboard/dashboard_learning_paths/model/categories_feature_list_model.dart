// To parse this JSON data, do
//
//     final categoriesFeatureList = categoriesFeatureListFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'categories_feature_list_model.freezed.dart';
part 'categories_feature_list_model.g.dart';

@Freezed(genericArgumentFactories: true)
class APIResponse<T> with _$APIResponse {
  factory APIResponse({
    required List<T> docs,
    required int status,
    required DateTime date,
  }) = _APIResponse;

  factory APIResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$APIResponseFromJson(json, fromJsonT);
}

@freezed
class LearningPathCategory with _$LearningPathCategory {
  const factory LearningPathCategory({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required int total,
    required String tags,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<LearningPathSummary> items,
  }) = _LearningPathCategory;

  factory LearningPathCategory.fromJson(Map<String, dynamic> json) =>
      _$LearningPathCategoryFromJson(json);
}

@freezed
class LearningPathSummary with _$LearningPathSummary {
  const factory LearningPathSummary({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required int score,
    required DateTime createdAt,
    required DateTime updatedAt,
    required AuthorSummary auther,
  }) = _LearningPathSummary;

  factory LearningPathSummary.fromJson(Map<String, dynamic> json) =>
      _$LearningPathSummaryFromJson(json);
}

@freezed
class AuthorSummary with _$AuthorSummary {
  const factory AuthorSummary({
    required String id,
    required String username,
  }) = _AuthorSummary;

  factory AuthorSummary.fromJson(Map<String, dynamic> json) =>
      _$AuthorSummaryFromJson(json);
}
