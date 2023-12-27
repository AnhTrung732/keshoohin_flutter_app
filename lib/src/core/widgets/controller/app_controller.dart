import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_controller.g.dart';

@Riverpod(keepAlive: true)
class HasProductBarController extends _$HasProductBarController {
  @override
  bool build() => false;

  void hasProductBar() {
    state = true;
  }

  void removeProductBar() {
    state = false;
  }
}
