import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loader_state.g.dart';

@riverpod
class AppLoaderState extends _$AppLoaderState {
  @override
  bool build() {
    return false;
  }

  void setLoaderValue(bool value) {
    state = value;
  }
}
