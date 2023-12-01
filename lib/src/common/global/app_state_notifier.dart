import 'package:keshoohin_flutter_app/src/common/global/app_state.dart';
import 'package:keshoohin_flutter_app/src/services/storage/storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state_notifier.g.dart';

@riverpod
class AppStateNotifier extends _$AppStateNotifier {
  @override
  AppState build() {
    return const AppState();
  }

  // Getter to retrieve the current state
  AppState get appState => state;

  // Setter
  void setloginState(bool newLoginState) {
    state = state.copyWith(loginState: newLoginState);
    //print(state.loginState);
  }

  void setCoachGuideState(bool newCoachGuideState) {
    state = state.copyWith(coachGuideState: newCoachGuideState);
    //print(state.coachGuideState);
  }

  Future<void> onAppStart() async {
    state = state.copyWith(
        coachGuideState:
            await ref.read(storageRepositoryProvider).getCoachState() ?? false);
    state = state.copyWith(
        loginState:
            await ref.read(storageRepositoryProvider).getLoginState() ?? false);
    // This is just to demonstrate the splash screen is working.
    // In real-life applications, it is not recommended to interrupt the user experience by doing such things.
  }
}
