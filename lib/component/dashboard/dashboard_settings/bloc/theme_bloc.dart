import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

enum AppTheme { Dark, Light }

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final AppSharedStore appSharedStore = locator.get();
  static const themeStoreKey = 'theme';
  ThemeBloc() : super(ThemeState.light()) {
    on<ThemeEvent>((event, emit) async {
      await event.when(
        loadTheme: () => _loadTheme(emit),
        switchTheme: () => _switchTheme(emit),
      );
    });
  }

  Future<void> _loadTheme(emit) async {
    emit(state.copyWith(isLoading: true));
    String? themeName = await appSharedStore.get<String>(ThemeBloc.themeStoreKey);
    if (themeName == null) {
      themeName = AppTheme.Light.name;
      await appSharedStore.set<String>(ThemeBloc.themeStoreKey, AppTheme.Light.name);
    }

    if (themeName == AppTheme.Dark.name) {
      emit(state.copyWith(
        themeData: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
      ));
    } else {
      emit(state.copyWith(
        themeData: ThemeData(
          brightness: Brightness.light,
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
      ));
    }
    emit(state.copyWith(isLoading: false, themeName: themeName));
    return Future.value();
  }

  Future<void> _switchTheme(emit) async {
    emit(state.copyWith(isLoading: true));
    if (state.themeName == AppTheme.Light.name) {
      emit(state.copyWith(themeData: ThemeData.dark(), themeName: AppTheme.Dark.name));
    } else {
      emit(state.copyWith(themeData: ThemeData.light(), themeName: AppTheme.Light.name));
    }

    await appSharedStore.set<String>(ThemeBloc.themeStoreKey, state.themeName);
    emit(state.copyWith(isLoading: false));
    return Future.value();
  }
}
