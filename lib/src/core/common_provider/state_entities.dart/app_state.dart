import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool loginState,
    @Default(false) bool coachGuideState,
  }) = _AppState;
}
