import 'dart:async';

import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(headers: {}));

class Api {
  static String baseURL = 'api.jsonbin.io';
  static String homePage = 'b/6072ba8fee971419c4d63894/16';
  static Future<T?> fetchCategoriesFeatureList<T>() async {
    const path =
        'https://raw.githubusercontent.com/golkhandani/nil_cross/main/mock/categories.json';
    final response = await dio.get<T>(path);
    return response.data;
  }
}

Future<void> getHttp() async {
  try {
    print(await Api.fetchCategoriesFeatureList());
  } catch (e) {
    print(e);
  }
}
