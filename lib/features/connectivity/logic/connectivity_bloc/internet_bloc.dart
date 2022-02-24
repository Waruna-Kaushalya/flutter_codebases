import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../connection/connection_facade.dart';
import '../connection/connection_status.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

// extension on ConnectivityResult {
//   bool get isWifi => this == ConnectivityResult.wifi;
//   bool get isMobile => this == ConnectivityResult.mobile;
//   bool get isNone => this == ConnectivityResult.none;
// }

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity connectivity;

  // final CheckConnection checkConnection;
  final ConnectivityFacade checkConnection;
  late StreamSubscription connectivityStreamSubscription;
  late StreamSubscription netStrem;

  InternetBloc(
    // this.connectivityStreamSubscription,
    this.connectivity,
    this.checkConnection,
  ) : super(InternetState()) {
    on<InternetEvent>(
      (event, emit) {
        event.map(
          started: (value) async {
            // final connectivityResultX =
            //     await (Connectivity().checkConnectivity());

            final connectivityResultX =
                await checkConnection.currentInternetStatus();

            netStrem = checkConnection.netStatus.listen((event) {
              add(InternetEvent.checkConnection(connectivityResult: event));
            });

            // connectivityStreamSubscription =
            //     connectivity.onConnectivityChanged.listen(
            //   (connectivityResult) async {
            //     add(InternetEvent.checkConnection(
            //         connectivityResult: connectivityResult));
            //   },
            // );

            // connectivityStreamSubscription =
            //     checkConnection.;

            if (connectivityResultX.isNone) {
              add(const InternetEvent.checkConnection(
                  connectivityResult: InternetStateStatus.none));
            }
            // if (state.internetStateStatus.isNone) {
            //   add(const InternetEvent.checkConnection(
            //       connectivityResult: ConnectivityResult.none));
            // }
          },
          checkConnection: (_CheckConnection value) {
            if (value.connectivityResult.isWifil) {
              emit(state.copyWith(
                internetStateStatus: InternetStateStatus.wifi,
              ));
            } else if (value.connectivityResult.isMobile) {
              emit(state.copyWith(
                internetStateStatus: InternetStateStatus.mobile,
              ));
            } else if (value.connectivityResult.isNone) {
              emit(state.copyWith(
                  internetStateStatus: InternetStateStatus.none,
                  showErr: true));
            }
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    netStrem.cancel();
    return super.close();
  }
}
