import 'failure.dart';

class RequestFailure extends Failure {
  RequestFailure(String msg) {
    message = msg;
  }
}
