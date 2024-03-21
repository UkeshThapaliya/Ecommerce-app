
import 'package:get/get.dart';
import 'package:rent_onway/features/authentication/controllers/signup/network_manager.dart';

class GeneralBindings extends Bindings{
  @override 
  void dependencies(){
    Get.put(NetworkManager ());
  }
}