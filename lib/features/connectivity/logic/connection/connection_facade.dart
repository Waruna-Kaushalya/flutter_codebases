import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'connection_status.dart';

extension on ConnectivityResult {
  bool get isWifi => this == ConnectivityResult.wifi;
  bool get isMobile => this == ConnectivityResult.mobile;
  bool get isNone => this == ConnectivityResult.none;
}

abstract class ConnectivityFacade {
  Future<InternetStateStatus> currentInternetStatus();
  Stream<InternetStateStatus> get netStatus;
}

class CheckConnection implements ConnectivityFacade {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;

  CheckConnection(this.connectivity);

  @override
  Future<InternetStateStatus> currentInternetStatus() async {
    late InternetStateStatus connectivityResult;
    final connectivityResultX = await (Connectivity().checkConnectivity());

    if (connectivityResultX.isMobile) {
      connectivityResult = InternetStateStatus.mobile;
    } else if (connectivityResultX.isWifi) {
      connectivityResult = InternetStateStatus.wifi;
    } else if (connectivityResultX.isNone) {
      connectivityResult = InternetStateStatus.none;
    }

    return connectivityResult;
  }

  final StreamController<InternetStateStatus> _statusController =
      StreamController<InternetStateStatus>();

  @override
  Stream<InternetStateStatus> get netStatus {
    connectivityStreamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult.isMobile) {
          _statusController.add(InternetStateStatus.mobile);
        } else if (connectivityResult.isWifi) {
          _statusController.add(InternetStateStatus.wifi);
        } else if (connectivityResult.isNone) {
          _statusController.add(InternetStateStatus.none);
        }
      },
    );
    return _statusController.stream;
  }

  void dispose() {
    _statusController.close();
    connectivityStreamSubscription.cancel();
  }
}
