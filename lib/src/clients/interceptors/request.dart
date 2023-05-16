import 'dart:async';

import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../force_closable.dart';

typedef RequestInterceptorCallback = void Function(
  BaseRequest,
);

class RequestInterceptorClient extends ParentClient {
  final Iterable<RequestInterceptorCallback> interceptors;

  RequestInterceptorClient(
    Client client,
    this.interceptors,
  ) : super(client);

  @protected
  void onInterceptRequest(BaseRequest request) {
    if (interceptors.isEmpty) return;

    for (final interceptor in interceptors) {
      interceptor(request);
    }
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    onInterceptRequest(request);
    return client.send(request);
  }
}
