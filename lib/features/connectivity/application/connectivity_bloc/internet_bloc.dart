import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_codebase/features/connectivity/domain/core/connection_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/facade/connection_facade.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

@injectable
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity connectivity;

  final ConnectivityFacade checkConnection;
  late StreamSubscription connectivityStreamSubscription;
  late StreamSubscription netStrem;

  InternetBloc(
    this.connectivity,
    this.checkConnection,
  ) : super(InternetState()) {
    on<InternetEvent>(
      (event, emit) {
        event.map(
          started: (value) async {
            final connectivityResultX =
                await checkConnection.currentInternetStatus();

            netStrem = checkConnection.netStatus.listen((event) {
              add(InternetEvent.checkConnection(connectivityResult: event));
            });

            if (connectivityResultX.isNone) {
              add(const InternetEvent.checkConnection(
                  connectivityResult: InternetStateStatus.none));
            }
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
