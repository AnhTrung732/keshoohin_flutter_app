import 'package:keshoohin_flutter_app/src/features/sign_up/presentation/notifier/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return const RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
    print(state);  
  }

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
    print(state);
  }

  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
    print(state);
  }

  void onRePasswordChange(String rePassword) {
    state = state.copyWith(rePassword: rePassword);
    print(state);
  }
}
