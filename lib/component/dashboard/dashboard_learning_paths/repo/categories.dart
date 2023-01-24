import 'dart:async';

import 'package:dio/dio.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/categories_feature_list_model.dart';
import 'dart:convert';

import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_complete_model.dart';

final dio = Dio(BaseOptions(headers: {}));

mixin TDoc {
  fromJson(json);
}

class LearningPathAPI {
  static Future<List<LearningPathCategory>> fetchCategoriesFeatureList() async {
    const path =
        'https://raw.githubusercontent.com/golkhandani/nil_cross/main/mock/categories_featured.json';
    final response = await dio.get(path);
    final resJson = json.decode(response.data);
    final resParsed = APIResponse<LearningPathCategory>.fromJson(resJson, (p0) {
      return LearningPathCategory.fromJson(p0 as dynamic);
    });
    return resParsed.docs as List<LearningPathCategory>;
  }

  static Future<LearningPathComplete> fetchLearningPathById(String id) async {
    const path =
        'https://raw.githubusercontent.com/golkhandani/nil_cross/main/mock/learning_path_id.json';
    final response = await dio.get(path);
    final resJson = json.decode(response.data);
    final resParsed = APIResponse<LearningPathComplete>.fromJson(resJson, (p0) {
      return LearningPathComplete.fromJson(p0 as dynamic);
    });
    return (resParsed.docs as List<LearningPathComplete>)[0];
  }
}

Future<void> getHttp() async {
  try {
    final res = await LearningPathAPI.fetchCategoriesFeatureList();

    print(res.first.id);
  } catch (e) {
    print(e);
  }
}
