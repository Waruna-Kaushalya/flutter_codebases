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
  StreamSubscription<InternetStateStatus>? connectivityStreamSubscription;

  InternetBloc(
    this.connectivity,
    this.checkConnection,
  ) : super(
          const InternetState(
            internetStateStatus: InternetStateStatus.none,
            showErr: false,
          ),
        ) {
    on<InternetEvent>(
      (event, emit) async {
        await event.map(
          started: (value) async {
            /// in these two parts initially check current connectivity status
            /// because initlly streme not provide initial connection state
            final connectivityResultX =
                await checkConnection.currentInternetStatus();

            /// if initially connection status in connected we dont need to
            /// show snack bar. if its not connected, then we need to show
            /// snack bar
            ///
            if (connectivityResultX.isNone) {
              add(const InternetEvent.checkConnection(
                  connectivityResult: InternetStateStatus.none));
            }

            connectivityStreamSubscription =
                checkConnection.connectivityStreamStatus.listen((event) {
              add(InternetEvent.checkConnection(connectivityResult: event));
            });
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
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
