import 'dart:async';
import '../core/connection_status.dart';

abstract class ConnectivityFacade {
  Future<InternetStateStatus> currentInternetStatus();
  Stream<InternetStateStatus> get connectivityStreamStatus;
}
