import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'connectiviy_checker.g.dart';

@Riverpod(keepAlive: true)
ConnectivityChecker connectivityChecker(ConnectivityCheckerRef ref) =>
    ConnectivityChecker();

class ConnectivityChecker {
  Future<bool> checkConnectivity() async {
    final ConnectivityResult connectivityResult =
        (await Connectivity().checkConnectivity()) as ConnectivityResult;
    return _handleResult(connectivityResult);
  }

  static Stream<List<ConnectivityResult>> listenToConnectivityChanged() {
    return Connectivity().onConnectivityChanged;
  }

  bool _handleResult(ConnectivityResult connectivityResult) {
    final bool connected;
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      connected = true;
    } else {
      connected = false;
    }

    return connected;
  }
}
