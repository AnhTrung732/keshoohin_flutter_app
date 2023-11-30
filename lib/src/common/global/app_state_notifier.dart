import 'package:keshoohin_flutter_app/src/common/global/app_state.dart';
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
  void  setloginState(bool newLoginState) {
    state = state.copyWith(loginState: newLoginState);
  }

  void setCoachGuideState(bool newCoachGuideState) {
    state = state.copyWith(coachGuideState: newCoachGuideState);
  }
}
