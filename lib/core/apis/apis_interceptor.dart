import 'dart:developer';

import 'package:http_interceptor/http_interceptor.dart';

class ApisInterceptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) {
    log('REQUEST[${request.method}] => PATH: ${request.url}');
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) {
    log('RESPONSE[${response.statusCode}] => PATH: ${response.request == null ? 'null' : response.request!.url}');
    throw UnimplementedError();
  }
}
