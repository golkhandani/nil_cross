part of 'learning_path_list_bloc.dart';

@freezed
class LearningPathListState with _$LearningPathListState {
  const factory LearningPathListState({
    @Default(true) bool isLoading,
    @Default(null) String? selectedLearningPathId,
    @Default(null) LearningPathSummary? selectedLearningPath,
    @Default('Learning Path Categories!') String? learningPathCategoriesPageTitle,
    @Default([]) List<LearningPathCategory> learningPathCategories,
    @Default([]) List<dynamic> learningPaths,
  }) = $$LearningPathListState;
  factory LearningPathListState.initial() => const LearningPathListState();
  factory LearningPathListState.loading() => const LearningPathListState(
        isLoading: true,
      );
  factory LearningPathListState.selectLearningPath(id) => LearningPathListState(
        selectedLearningPathId: id,
      );
  factory LearningPathListState.load(list) => LearningPathListState(
        learningPaths: list,
      );
}
