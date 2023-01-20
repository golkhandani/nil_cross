part of 'learning_path_list_bloc.dart';

@freezed
class LearningPathListEvent with _$LearningPathListEvent {
  const factory LearningPathListEvent.selectLearningPath(String id) =
      _LearningPathListSelectLearningPath;
  const factory LearningPathListEvent.getLearningPath(String id) = _LearningPathListGetLearningPath;
  const factory LearningPathListEvent.loadSelectLearningPath(String id) =
      _LearningPathListLoadSelectLearningPath;
  const factory LearningPathListEvent.load() = _LearningPathListLoad;
}
