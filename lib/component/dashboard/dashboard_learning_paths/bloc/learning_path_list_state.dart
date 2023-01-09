part of 'learning_path_list_bloc.dart';

@freezed
class LearningPathListState with _$LearningPathListState {
  const factory LearningPathListState({
    @Default(true) bool isLoading,
    @Default(null) String? selectedId,
    @Default([]) List<dynamic> learningPaths,
  }) = $$LearningPathListState;
  factory LearningPathListState.initial() => const LearningPathListState();
  factory LearningPathListState.loading() => const LearningPathListState(
        isLoading: true,
      );
  factory LearningPathListState.select(id) => LearningPathListState(
        selectedId: id,
      );
  factory LearningPathListState.load(list) => LearningPathListState(
        learningPaths: list,
      );
}
