part of 'connectivity_cubit.dart';

@immutable
abstract class ConnectivityState extends Equatable {}

class NetworkLoading extends ConnectivityState {
  @override
  List<Object?> get props => [];
}

class NetworkConnected extends ConnectivityState {
  final ConnectionType connectionType;

  NetworkConnected({required this.connectionType});

  @override
  String toString() => 'InternetConnected(connectionType: $connectionType)';

  @override
  List<Object?> get props => [connectionType];
}

class NetworkDisconnected extends ConnectivityState {
  @override
  List<Object?> get props => [];
}

class NetworkConnectedWithoutInternet extends ConnectivityState {
  @override
  List<Object?> get props => [];
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:flutter_bloc_concepts/utility/constants/enums.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'internet_state.freezed.dart';

// part of 'internet_cubit.dart';

// @freezed
// abstract class InternetState with _$InternetState {
//   const factory InternetState.netLoading() = InternetLoading;
//   const factory InternetState.netConnectedMobile() = InternetConnectedMobile;
//   const factory InternetState.netConnectedWiFi() = InternetConnectedWiFi;
//   const factory InternetState.netDisconnected() = InternetDisconnected;
// }
