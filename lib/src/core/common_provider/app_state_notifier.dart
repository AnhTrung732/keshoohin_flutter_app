import 'package:keshoohin_flutter_app/src/core/common_provider/state_entities.dart/state_entities.dart.dart';
import 'package:keshoohin_flutter_app/src/core/services/storage/storage_export.dart';
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
            ref.read(storageRepositoryProvider).getCoachState() ?? false);
    state = state.copyWith(
        loginState:
            ref.read(storageRepositoryProvider).getLoginState() ?? false);
    // This is just to demonstrate the splash screen is working.
    // In real-life applications, it is not recommended to interrupt the user experience by doing such things.
  }
}
