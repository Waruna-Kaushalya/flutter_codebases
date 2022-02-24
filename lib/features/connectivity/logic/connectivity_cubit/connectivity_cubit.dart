// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

// part 'connectivity_state.dart';

// enum ConnectionType { wifi, mobile, none }

// extension ConnectionTypeX on ConnectionType {
//   bool get isWifi => this == ConnectionType.wifi;
//   bool get isMobile => this == ConnectionType.mobile;
//   bool get isNone => this == ConnectionType.none;
// }

// extension ConnectivityResultX on ConnectivityResult {
//   bool get isWifi => this == ConnectivityResult.wifi;
//   bool get isMobile => this == ConnectivityResult.mobile;
//   bool get isNone => this == ConnectivityResult.none;
// }

// class ConnectivityCubit extends Cubit<ConnectivityState> {
//   //? final Connectivity connectivity = Connectivity();

//   //?connectivity_plus plugin dependency and pasing it
//   //?required parramerter as constructor
//   final Connectivity connectivity;

//   //? You can also listen for network state changes by subscribing to the stream exposed by connectivity plugin
//   //? Be sure to cancel subscription after you are done
//   late StreamSubscription connectivityStreamSubscription;

//   ConnectivityCubit({required this.connectivity}) : super(NetworkLoading()) {
//     //? Got a new connectivity status!
//     connectivityStreamSubscription = connectivity.onConnectivityChanged.listen(
//       (connectivityResult) {
//         if (connectivityResult.isWifi) {
//           emitInternetConnected(ConnectionType.wifi);
//           // emit(InternetConnected(connectionType: ConnectionType.wifi));
//         } else if (connectivityResult.isMobile) {
//           emitInternetConnected(ConnectionType.mobile);
//           // emit(InternetConnected(connectionType: ConnectionType.mobile));
//         } else if (connectivityResult.isNone) {
//           emitInternetDisconnected();
//           // emit(InternetDisconnected());
//         }
//       },
//     );
//   }

//   void emitInternetConnected(ConnectionType connectionType) =>
//       emit(NetworkConnected(connectionType: connectionType));

//   // void emitInternetConnectedMobile(ConnectionType connectionType) =>
//   //     emit(NetworkConnected(connectionType: connectionType));

//   void emitInternetDisconnected() => emit(NetworkDisconnected());

//   //?Be sure to cancel subscription after you are done
//   @override
//   Future<void> close() {
//     connectivityStreamSubscription.cancel();
//     return super.close();
//   }
// }

// //????

// // import 'dart:async';
// // import 'dart:convert';
// // import 'dart:io';
// // import 'package:connectivity_plus/connectivity_plus.dart';
// // import 'package:equatable/equatable.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:meta/meta.dart';
// // import 'package:json_annotation/json_annotation.dart';

// // part 'connectivity_cubit.g.dart';
// // part 'connectivity_state.dart';

// // enum ConnectionType { wifi, mobile, none }

// // class ConnectivityCubit extends Cubit<ConnectivityState> {
// //   //? final Connectivity connectivity = Connectivity();

// //   //?connectivity_plus plugin dependency and pasing it
// //   //?required parramerter as constructor
// //   final Connectivity connectivity;

// //   //? You can also listen for network state changes by subscribing to the stream exposed by connectivity plugin
// //   //? Be sure to cancel subscription after you are done
// //   late StreamSubscription connectivityStreamSubscription;

// //   ConnectivityCubit({required this.connectivity})
// //       : super(const ConnectivityState(connectionType: ConnectionType.none)) {
// //     //? Got a new connectivity status!
// //     connectivityStreamSubscription =
// //         connectivity.onConnectivityChanged.listen((connectivityResult) {
// //       if (connectivityResult == ConnectivityResult.wifi) {
// //         emitInternetConnectedWiFi(ConnectionType.wifi);
// //         // emit(InternetConnected(connectionType: ConnectionType.wifi));
// //       } else if (connectivityResult == ConnectivityResult.mobile) {
// //         emitInternetConnectedMobile(ConnectionType.mobile);
// //         // emit(InternetConnected(connectionType: ConnectionType.mobile));
// //       } else if (connectivityResult == ConnectivityResult.none) {
// //         emitInternetDisconnected();
// //         // emit(InternetDisconnected());
// //       }
// //     });
// //   }

// //   Future<void> emitInternetConnectedWiFi(ConnectionType connectionType) async {
// //     try {
// //       await InternetAddress.lookup('www.google.com');
// //       emit(state.copyWith(
// //           status: ConnectivityStatus.connected,
// //           connectionType: connectionType));
// //       // emit(NetworkConnected(connectionType: connectionType));
// //     } on SocketException {
// //       emit(state.copyWith(
// //           status: ConnectivityStatus.connectedWithoutInternet,
// //           connectionType: connectionType));
// //       // emit(NetworkConnectedWithoutInternet());
// //     }
// //   }

// //   Future<void> emitInternetConnectedMobile(
// //       ConnectionType connectionType) async {
// //     try {
// //       //? This line is for check weather Network connected without internet
// //       await InternetAddress.lookup('www.google.com');
// //       emit(state.copyWith(
// //           status: ConnectivityStatus.connected,
// //           connectionType: connectionType));
// //       // emit(NetworkConnected(connectionType: connectionType));

// //     } on SocketException {
// //       emit(state.copyWith(
// //           status: ConnectivityStatus.connectedWithoutInternet,
// //           connectionType: connectionType));
// //       // emit(NetworkConnectedWithoutInternet());
// //     }
// //   }

// //   void emitInternetDisconnected() {
// //     emit(state.copyWith(
// //       status: ConnectivityStatus.disconnected,
// //     ));
// //   }

// //   //?Be sure to cancel subscription after you are done
// //   @override
// //   Future<void> close() {
// //     connectivityStreamSubscription.cancel();
// //     return super.close();
// //   }
// // }
