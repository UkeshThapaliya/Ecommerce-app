
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rent_onway/utils/popups/loaders.dart';

class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  //Initialize the network manager and check te conection status
  @override
  void onInit(){
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }
  //update the connection based on changed in connectivity and show relevant popup
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
if (_connectionStatus.value == ConnectivityResult.none){
  ThLoaders.warningSnackBar(title: 'No Internet Connection');

 }
}
//Check the internet connection

//if connected return true otherwise false
Future<bool> isConnected() async {
  try{
    final result = await _connectivity.checkConnectivity();
    if(result == ConnectivityResult.none){
      return false;
    }else{
      return true;
    }
  }on PlatformException catch(_){
    return false;
  }
}

//Dispose or close the active connectivity stream
@override
void onClose(){
  super.onClose();
  _connectivitySubscription.cancel();
}
}