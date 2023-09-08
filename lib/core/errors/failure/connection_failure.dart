import '../../utils/app_strings.dart';
import 'failure.dart';

class ConnectionFailure extends Failure {
  ConnectionFailure() {
    message = AppStrings.connectionFailure;
  }
}
