import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';

import 'package:kenlo_flutter/app/modules/client/client_factory.dart';

class ClientHTTP {
  ClientHTTP() {
    setupClient();
  }

  static Dio setupClient({
    String? urlBase,
  }) {
    final client = ClientFactory.baseClient!;
    client.options.baseUrl = 'http://localhost:3000/kenlo.com.br';
    client.options.followRedirects = false;
    client.options.connectTimeout = 10 * 1000;
    client.options.receiveTimeout = 10 * 2000;
    client.interceptors.add(dioLoggerInterceptor);

    return client;
  }

  static Dio get clientBase => setupClient();
}
