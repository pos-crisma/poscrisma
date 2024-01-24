import 'package:core/core.dart';

Future<bool> checkConnectivity() async {
  final result = await Connectivity().checkConnectivity();
  final resultStatus = switch (result) {
    ConnectivityResult.mobile => true,
    ConnectivityResult.bluetooth => true,
    ConnectivityResult.ethernet => true,
    ConnectivityResult.wifi => true,
    ConnectivityResult.vpn => true,
    ConnectivityResult.other => true,
    ConnectivityResult.none => false,
  };

  return resultStatus;
}
