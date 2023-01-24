// To parse this JSON data, do
//
//     final learningPathComplete = learningPathCompleteFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'learning_path_complete_model.freezed.dart';
part 'learning_path_complete_model.g.dart';

@freezed
class LearningPathComplete with _$LearningPathComplete {
  const factory LearningPathComplete({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required int score,
    required String duration,
    required Counts counts,
    required List<LearningPathStep> steps,
    required Author author,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LearningPathComplete;

  factory LearningPathComplete.fromJson(Map<String, dynamic> json) =>
      _$LearningPathCompleteFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    required String id,
    required String username,
    required String name,
    required String bio,
    required String email,
    required List<String> expertise,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
class Counts with _$Counts {
  const factory Counts({
    required int steps,
    required int likes,
    required int notLikes,
    required int forks,
  }) = _Counts;

  factory Counts.fromJson(Map<String, dynamic> json) => _$CountsFromJson(json);
}

@freezed
class LearningPathStep with _$LearningPathStep {
  const factory LearningPathStep({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required String htmlContent,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LearningPathStep;

  factory LearningPathStep.fromJson(Map<String, dynamic> json) =>
      _$LearningPathStepFromJson(json);
}
