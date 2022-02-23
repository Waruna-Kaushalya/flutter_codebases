import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

extension on ConnectivityResult {
  bool get isWifi => this == ConnectivityResult.wifi;
  bool get isMobile => this == ConnectivityResult.mobile;
  bool get isNone => this == ConnectivityResult.none;
}

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;
  InternetBloc(
    this.connectivity,
  ) : super(InternetState()) {
    on<InternetEvent>(
      (event, emit) {
        event.map(
          started: (value) async {
            final connectivityResultX =
                await (Connectivity().checkConnectivity());

            connectivityStreamSubscription =
                connectivity.onConnectivityChanged.listen(
              (connectivityResult) async {
                add(InternetEvent.checkConnection(
                    connectivityResult: connectivityResult));
              },
            );

            if (connectivityResultX.isNone) {
              add(const InternetEvent.checkConnection(
                  connectivityResult: ConnectivityResult.none));
            }
            // if (state.internetStateStatus.isNone) {
            //   add(const InternetEvent.checkConnection(
            //       connectivityResult: ConnectivityResult.none));
            // }
          },
          checkConnection: (_CheckConnection value) {
            // &&  state.showToast.isTrueToast
            // showToast: ShowToastStatus.trueToast

            if (value.connectivityResult.isWifi) {
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
    return super.close();
  }
}
