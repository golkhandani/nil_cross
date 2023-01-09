part of 'learning_path_list_bloc.dart';

@freezed
class LearningPathListEvent with _$LearningPathListEvent {
  const factory LearningPathListEvent.select(String id) = _LearningPathListSelect;
  const factory LearningPathListEvent.load() = _LearningPathListLoad;
}
