import 'package:dio/dio.dart';
import 'package:flutter_elevate/dependancy_injection.dart';

class ApiServices {
  static var headers = {'Content-Type': 'application/json'};
  static Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    Response response = await getIt.get<Dio>().get(
          endPoint,
          data: data,
          queryParameters: query,
        );
    return response.data;
  }
}
