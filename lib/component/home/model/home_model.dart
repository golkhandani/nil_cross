import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

enum BannerType { image, video }

enum ActionType { general, danger, warning }

@freezed
class Home with _$Home {
  const factory Home({
    required Banner banner,
    required About about,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
class About with _$About {
  const factory About({
    required String text,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    required BannerType type,
    required String image,
    required String title,
    required String description,
    required List<Action> actions,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Action with _$Action {
  const factory Action({
    required String uri,
    required ActionType type,
  }) = _Action;

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
}
