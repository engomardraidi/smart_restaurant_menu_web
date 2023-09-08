import '../../utils/app_strings.dart';
import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure() {
    message = AppStrings.serverFailure;
  }
}
