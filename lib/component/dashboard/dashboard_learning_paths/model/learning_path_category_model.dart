// To parse this JSON data, do
//
//     final learningPathCategory = learningPathCategoryFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_path_category_model.freezed.dart';
part 'learning_path_category_model.g.dart';

@freezed
class LearningPathCategory with _$LearningPathCategory {
  const factory LearningPathCategory({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required List<LearningPathSummary?> items,
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
    required double score,
  }) = _LearningPathSummary;

  factory LearningPathSummary.fromJson(Map<String, dynamic> json) =>
      _$LearningPathSummaryFromJson(json);
}
