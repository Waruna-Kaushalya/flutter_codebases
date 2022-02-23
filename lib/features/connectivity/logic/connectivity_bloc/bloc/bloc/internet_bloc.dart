import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

extension ConnectivityResultX on ConnectivityResult {
  bool get isWifi => this == ConnectivityResult.wifi;
  bool get isMobile => this == ConnectivityResult.mobile;
  bool get isNone => this == ConnectivityResult.none;
}

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;
  InternetBloc(
    this.connectivity,
  ) : super(InternetState(
          internetStateStatus: InternetStateStatus.none,
        )) {
    on<InternetEvent>(
      (event, emit) async {
        event.map(
          started: (value) {
            connectivityStreamSubscription =
                connectivity.onConnectivityChanged.listen(
              (connectivityResult) async {
                add(InternetEvent.checkConnection(
                    connectivityResult: connectivityResult));
              },
            );
          },
          checkConnection: (_CheckConnection value) {
            if (value.connectivityResult.isWifi &&
                state.showToast.isTrueToast) {
              emit(state.copyWith(
                  internetStateStatus: InternetStateStatus.wifi,
                  showToast: ShowToastStatus.trueToast));
            } else if (value.connectivityResult.isMobile &&
                state.showToast.isTrueToast) {
              emit(state.copyWith(
                  internetStateStatus: InternetStateStatus.mobile,
                  showToast: ShowToastStatus.trueToast));
            } else if (value.connectivityResult.isNone) {
              emit(state.copyWith(
                  internetStateStatus: InternetStateStatus.none,
                  showToast: ShowToastStatus.trueToast));
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
