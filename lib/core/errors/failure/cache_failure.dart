import '../../utils/app_strings.dart';
import 'failure.dart';

class CacheFailure extends Failure {
  CacheFailure() {
    message = AppStrings.cacheFailure;
  }
}
