import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/home/model/home_model.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppNavigator _appNavigator = locator.get();
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        loadData: () => _loadData(emit),
        goToLogin: () => _goToLogin(emit),
        goToDashboard: () => _goToDashboard(emit),
      );
    });
  }

  _loadData(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 200));
    emit(state.copyWith(
      isLoading: false,
      home: Home.fromJson({
        "banner": {
          "type": "image",
          "image":
              "https://images.unsplash.com/flagged/photo-1570268852101-63d51b8f303f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          "title": "Pestalozzi the educator",
          "description":
              "Pestalozzi the educator Johann Heinrich Pestalozzi was born in 1746, in Zürich. He devoted his whole life to the education of poor children, and he is considered by many as the creator of modern pedagogy. He founded many schools that served as models across Europe. The Pestalozzi school in Yverdon is among one of the first he created in Switzerland. That's why the city of Yverdon-les-Bains erected this statue in a square named after him. However, in modern times teenagers are quite creative and sometimes a bit sassy. So they added one interesting element",
          "actions": []
        },
        "about": {"text": "about"}
      }),
    ));
    //  print(_authenticationBloc.state.isLoggedIn);
  }

  _goToLogin(Emitter<HomeState> emit) {
    emit(state.copyWith(isLoading: true));
    _appNavigator.replace(LoginRouter());
    emit(state.copyWith(isLoading: false));
  }

  _goToDashboard(Emitter<HomeState> emit) {
    emit(state.copyWith(isLoading: true));
    _appNavigator.replace(DashboardRouter());
    emit(state.copyWith(isLoading: false));
  }
}
