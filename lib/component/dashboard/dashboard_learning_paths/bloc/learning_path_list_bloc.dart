import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_single/dashboard_learning_path_single_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/categories_feature_list_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_complete_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/repo/categories.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';

part 'learning_path_list_event.dart';
part 'learning_path_list_state.dart';
part 'learning_path_list_bloc.freezed.dart';

class LearningPathListBloc
    extends Bloc<LearningPathListEvent, LearningPathListState> {
  LearningPathListBloc() : super(LearningPathListState.initial()) {
    on<LearningPathListEvent>((event, emit) async {
      await event.when<Future<void>>(
        selectLearningPath: (item) => _selectLearningPath(item, emit),
        loadSelectLearningPath: (id) => _loadselectLearningPath(id, emit),
        load: () => _load(emit),
        getLearningPath: (id) => _getLearningPath(id, emit),
      );
    });
  }

  _getLearningPath(String id, Emitter<LearningPathListState> emit) async {
    final lc = await LearningPathAPI.fetchLearningPathById(id);
    emit(state.copyWith(
      isLoadingLearningPathComplete: true,
      learningPathComplete: null,
    ));
    await Future.delayed(const Duration(milliseconds: 2000));

    List<LearningPathStep> steps = List.from(lc.steps.map((e) => e));
    steps.shuffle();
    emit(state.copyWith(
      isLoadingLearningPathComplete: false,
      learningPathSummary: LearningPathSummary(
        id: lc.id,
        title: lc.title,
        thumbnail: lc.thumbnail,
        summary: lc.summary,
        score: lc.score,
        author: AuthorSummary(id: lc.author.id, username: lc.author.username),
        createdAt: lc.createdAt,
        updatedAt: lc.updatedAt,
      ),
      learningPathComplete: LearningPathComplete(
        id: lc.id,
        title: lc.title,
        thumbnail: lc.thumbnail,
        summary: lc.summary,
        score: lc.score,
        duration: lc.duration,
        counts: lc.counts,
        steps: steps,
        author: lc.author,
        createdAt: lc.createdAt,
        updatedAt: lc.updatedAt,
      ),
      isLoading: false,
    ));
  }

  _loadselectLearningPath(
    String id,
    Emitter<LearningPathListState> emit,
  ) async {
    late LearningPathSummary? selected;
    await _load(emit);
    emit(state.copyWith(
      learningPathSummary: null,
      learningPathComplete: null,
      isLoading: true,
    ));
    state.learningPathCategories.firstWhere((e) {
      selected = e.items.firstWhere((element) => element.id == id);
      return selected != null ? true : false;
    });
    emit(state.copyWith(learningPathSummary: selected));
    emit(state.copyWith(
      learningPathComplete: null,
      isLoading: false,
    ));
    // locator.get<AppNavigator>().push();
  }

  _selectLearningPath(LearningPathSummary learningPathSummary,
      Emitter<LearningPathListState> emit) async {
    emit(state.copyWith(
      learningPathComplete: null,
      isLoadingLearningPathComplete: true,
    ));
    await Future.delayed(const Duration(milliseconds: 200));
    emit(state.copyWith(learningPathSummary: learningPathSummary));
    locator.get<AppNavigator>().push(
      DashboardLearningPathSingleScreen.routerName,
      pathParameters: {'id': learningPathSummary.id},
    );
  }

  _load(Emitter<LearningPathListState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 200));
    final data = await LearningPathAPI.fetchCategoriesFeatureList();
    emit(state.copyWith(learningPathCategories: data));
    emit(state.copyWith(isLoading: false));
  }
}
