import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'connectivity_state.dart';

enum ConnectionType { wifi, mobile, none }

class ConnectivityCubit extends Cubit<ConnectivityState> {
  //? final Connectivity connectivity = Connectivity();

  //?connectivity_plus plugin dependency and pasing it
  //?required parramerter as constructor
  final Connectivity connectivity;

  //? You can also listen for network state changes by subscribing to the stream exposed by connectivity plugin
  //? Be sure to cancel subscription after you are done
  late StreamSubscription connectivityStreamSubscription;

  ConnectivityCubit({required this.connectivity}) : super(NetworkLoading()) {
    //? Got a new connectivity status!
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnectedWiFi(ConnectionType.wifi);
        // emit(InternetConnected(connectionType: ConnectionType.wifi));
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnectedMobile(ConnectionType.mobile);
        // emit(InternetConnected(connectionType: ConnectionType.mobile));
      } else if (connectivityResult == ConnectivityResult.none) {
        emitInternetDisconnected();
        // emit(InternetDisconnected());
      }
    });
  }

  Future<void> emitInternetConnectedWiFi(ConnectionType connectionType) async {
    try {
      await InternetAddress.lookup('www.google.com');
      emit(NetworkConnected(connectionType: connectionType));
    } on SocketException {
      emit(NetworkConnectedWithoutInternet());
    }
  }

  Future<void> emitInternetConnectedMobile(
      ConnectionType connectionType) async {
    try {
      //? This line is for check weather Network connected without internet
      await InternetAddress.lookup('www.google.com');
      emit(NetworkConnected(connectionType: connectionType));
    } on SocketException {
      emit(NetworkConnectedWithoutInternet());
    }
  }

  void emitInternetDisconnected() => emit(NetworkDisconnected());

  //?Be sure to cancel subscription after you are done
  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
