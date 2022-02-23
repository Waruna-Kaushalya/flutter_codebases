// part of 'connectivity_cubit.dart';

// @immutable
// abstract class ConnectivityState extends Equatable {}

// class NetworkLoading extends ConnectivityState {
//   @override
//   List<Object?> get props => [];
// }

// class NetworkConnected extends ConnectivityState {
//   final ConnectionType connectionType;

//   NetworkConnected({required this.connectionType});

//   @override
//   List<Object?> get props => [connectionType];
// }

// class NetworkDisconnected extends ConnectivityState {
//   @override
//   List<Object?> get props => [];
// }




// //???
// // part of 'connectivity_cubit.dart';

// // enum ConnectivityStatus {
// //   loading,
// //   connected,
// //   disconnected,
// //   connectedWithoutInternet,
// // }

// // extension ConnectivityStatusX on ConnectivityStatus {
// //   bool get isLoading => this == ConnectivityStatus.loading;
// //   bool get isConnected => this == ConnectivityStatus.connected;
// //   bool get isDisconnected => this == ConnectivityStatus.disconnected;
// //   bool get isConnectedWithoutInternet =>
// //       this == ConnectivityStatus.connectedWithoutInternet;
// // }

// // @JsonSerializable()
// // class ConnectivityState extends Equatable {
// //   final ConnectivityStatus status;
// //   final ConnectionType connectionType;
// //   const ConnectivityState({
// //     this.status = ConnectivityStatus.loading,
// //     required this.connectionType,
// //   });

// //   ConnectivityState copyWith({
// //     ConnectivityStatus? status,
// //     ConnectionType? connectionType,
// //   }) {
// //     return ConnectivityState(
// //       status: status ?? this.status,
// //       connectionType: connectionType ?? this.connectionType,
// //     );
// //   }

// //   Map<String, dynamic> toMap() {
// //     return {
// //       'status': status,
// //       'connectionType': connectionType,
// //     };
// //   }

// //   factory ConnectivityState.fromJson(Map<String, dynamic> json) =>
// //       _$ConnectivityStateFromJson(json);

// //   Map<String, dynamic> toJson() => _$ConnectivityStateToJson(this);

// //   @override
// //   List<Object?> get props => [status, connectionType];
// // }
