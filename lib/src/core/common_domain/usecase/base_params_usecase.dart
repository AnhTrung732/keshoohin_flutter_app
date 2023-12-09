import 'package:equatable/equatable.dart';

abstract class BaseParamsUseCase<Type, Request> {
  Future<Type> call([Request? params]);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => <Object>[];
}
