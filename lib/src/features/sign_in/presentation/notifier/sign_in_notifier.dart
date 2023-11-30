import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/notifier/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_notifier.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return const SignInState();
  }

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
    print(state);
  }

  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
    print(state);
  }
}
