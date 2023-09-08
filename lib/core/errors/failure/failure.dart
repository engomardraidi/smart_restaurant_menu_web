import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  late final String message;

  @override
  List<Object?> get props => [message];
}
