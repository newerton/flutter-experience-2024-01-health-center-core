import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_experience_medical_laboratory_core/src/restClient/interceptors/auth_interceptor.dart';

final class RestClient extends DioForNative {
  RestClient(String baseUrl)
      : super(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 16),
        )) {
    interceptors.addAll(
        [LogInterceptor(request: true, responseBody: true), AuthInterceptor()]);
  }

  RestClient get auth {
    options.extra['DIO_AUTH_KEY'] = true;
    return this;
  }

  RestClient get noAuth {
    options.extra['DIO_AUTH_KEY'] = false;
    return this;
  }
}
