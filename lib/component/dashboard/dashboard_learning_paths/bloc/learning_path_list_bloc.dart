import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        selectLearningPath: (id) => _selectLearningPath(id, emit),
        loadSelectLearningPath: (id) => _loadselectLearningPath(id, emit),
        load: () => _load(emit),
        getLearningPath: (id) => _getLearningPath(id, emit),
      );
    });
  }

  _getLearningPath(String id, Emitter<LearningPathListState> emit) async {
    await getHttp();
    emit(state.copyWith(
      isLoadingLearningPathComplete: true,
      learningPathComplete: null,
    ));
    await Future.delayed(const Duration(milliseconds: 2000));
    final lc = LearningPathComplete.fromJson({
      "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
      "title": "Raven",
      "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
      "summary":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
      "score": 1,
      "duration": "10 days",
      "counts": {"steps": 10, "likes": 1000, "notLikes": 3000, "forks": 20},
      "steps": [
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 1",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 2",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 3",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 4",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 5",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 6",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 7",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 8",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        }
      ],
      "author": {
        "id": "id",
        "username": "username",
        "name": "name",
        "bio": "bio",
        "email": "email",
        "expertise": ["expertise", "expertise", "expertise", "expertise"],
        "createdAt": "2018-12-10T13:49:51.141Z",
        "updatedAt": "2018-12-10T13:49:51.141Z"
      },
      "createdAt": "2018-12-10T13:49:51.141Z",
      "updatedAt": "2018-12-10T13:49:51.141Z"
    });
    List<LearningPathStep?> steps = List.from(lc.steps?.map((e) => e) ?? []);
    steps.shuffle();
    emit(state.copyWith(
      isLoadingLearningPathComplete: false,
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
    locator.get<AppNavigator>().push(DashboardLearningPathSingleRouter(id: id));
  }

  _selectLearningPath(String id, Emitter<LearningPathListState> emit) async {
    late LearningPathSummary? selected;
    state.learningPathCategories.firstWhere((e) {
      selected = e.items.firstWhere(
        (element) => element.id == id,
      );
      return selected != null ? true : false;
    });
    emit(state.copyWith(learningPathSummary: selected));
    locator.get<AppNavigator>().push(DashboardLearningPathSingleRouter(id: id));
  }

  _load(Emitter<LearningPathListState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 200));
    final data = await Api.fetchCategoriesFeatureList();
    emit(state.copyWith(learningPathCategories: data));
    emit(state.copyWith(isLoading: false));
  }
}
