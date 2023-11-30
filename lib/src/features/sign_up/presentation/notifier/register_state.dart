import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';
@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default("") String userName,
    @Default("") String email,
    @Default("") String password,
    @Default("") String rePassword,
  }) = _RegisterState;
}
