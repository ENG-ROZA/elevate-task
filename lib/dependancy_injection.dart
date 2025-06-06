import 'package:dio/dio.dart';
import 'package:flutter_elevate/core/helper/utilities/app_strings.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initInj() async {
  Dio dio = Dio();
  dio.options.baseUrl = AppStrings.baseUrl;
  dio.options.validateStatus = (i) => true;

  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    request: true,
    responseHeader: false,
    responseBody: true,
    requestHeader: false,
  ));

  getIt.registerSingleton<Dio>(dio);
}
