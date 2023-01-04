import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';

part 'learning_path_list_event.dart';
part 'learning_path_list_state.dart';
part 'learning_path_list_bloc.freezed.dart';

class LearningPathListBloc extends Bloc<LearningPathListEvent, LearningPathListState> {
  LearningPathListBloc() : super(LearningPathListState.initial()) {
    on<LearningPathListEvent>((event, emit) async {
      await event.when<Future<void>>(
        select: (id) => _select(id, emit),
        load: () => _load(emit),
      );
    });
  }

  _select(String id, Emitter<LearningPathListState> emit) async {
    locator.get<AppNavigator>().push(DashboardLearningPathSingleRouter(id: id));
  }

  _load(Emitter<LearningPathListState> emit) async {
    emit(LearningPathListState.loading());
    await Future.delayed(const Duration(milliseconds: 2000));
    emit(LearningPathListState.load([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  }
}
