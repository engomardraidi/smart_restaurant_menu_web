import 'package:dartz/dartz.dart';

import '../errors/failure/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Type, Failure>> call(Params params);
}
