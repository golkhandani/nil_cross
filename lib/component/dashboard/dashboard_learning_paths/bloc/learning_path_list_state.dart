part of 'learning_path_list_bloc.dart';

@freezed
class LearningPathListState with _$LearningPathListState {
  const factory LearningPathListState({
    @Default(true) bool isLoading,
    @Default(null) LearningPathSummary? learningPathSummary,
    @Default(true) bool isLoadingLearningPathComplete,
    @Default(null) LearningPathComplete? learningPathComplete,
    @Default('Learning Path Categories!')
        String? learningPathCategoriesPageTitle,
    @Default([]) List<LearningPathCategory> learningPathCategories,
    @Default([]) List<dynamic> learningPaths,
  }) = $$LearningPathListState;
  factory LearningPathListState.initial() => const LearningPathListState();
}
