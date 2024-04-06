import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkmode = ThHelperFun.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation:0,
          selectedIndex:controller.selectedIndex.value,
          onDestinationSelected: (index) =>controller.selectedIndex.value = index ,
          backgroundColor: darkmode? ThColors.black : Colors.white,
          indicatorColor: darkmode? ThColors.white.withOpacity(0.1) : ThColors.black.withOpacity(0.1),
          destinations:const[
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'), 
          ],
        ),
      ),
      
      body: Container(),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [Container(color: Colors.green), Container(color: Colors.purple),Container(color: Colors.orange), Container(color: Colors.blue)];
}

