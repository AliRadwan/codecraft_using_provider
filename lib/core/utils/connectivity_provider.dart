import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum ConnectivityStatus { NotDetermined, isConnected, isDisonnected }

class ConnectivityProvider extends ChangeNotifier {
  ConnectivityStatus _status = ConnectivityStatus.NotDetermined;
  StreamController<ConnectivityResult> controller = StreamController<ConnectivityResult>();
  ConnectivityStatus? _lastStatus;
  late StreamSubscription<ConnectivityResult> _subscription;

  ConnectivityProvider() {
   _lastStatus = ConnectivityStatus.NotDetermined;
   _initConnsctivity();
   _setUpConnectionListener();
     }

     ConnectivityStatus get status => _status;

  Future<void> _initConnsctivity() async {
    try {
      final result = await Connectivity().checkConnectivity();
      _updateConnectionStatus(result);
    }
    catch (e) {
      debugPrint('Could not get connectivity status: $e');
    }
  }

  void _setUpConnectionListener() {
    _subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result);
    });
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    ConnectivityStatus? newState;

    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        newState = ConnectivityStatus.isConnected;
        break;
      case ConnectivityResult.none:
        newState = ConnectivityStatus.isDisonnected;
        break;
      default:
        newState = ConnectivityStatus.NotDetermined;
    }
    if (newState !=  _lastStatus) {
      _lastStatus = newState;
      _lastStatus = newState;
      notifyListeners();
    }
  }
  @override
  void dispose() {
    _subscription.cancel();
    controller.close();
    super.dispose();
  }
}

extension ConnectivityProviderExtension on BuildContext {
  ConnectivityProvider get connectivityProvider => Provider.of<ConnectivityProvider>(this, listen: false);
  ConnectivityStatus get connectionStatus => Provider.of<ConnectivityProvider>(this).status;
}