
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/widgets/loaders/animation_loader.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThFullScreenLoader{

static void openLoadingDialog(String text, String animation){
  showDialog(
    context: Get.overlayContext!, // for overlay dialog
    barrierDismissible: false,  //dialog cant be dismissed by tapping outside
     builder: (_) => PopScope(
      canPop: false,//Disable pooping with back button
      child: Container(
        color: ThHelperFun.isDarkMode(Get.context!) ? ThColors.dark : ThColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 250), 
            ThAnimationLoaderWidget(text: text, animation: animation),
          ],

        )
      ),
     ),
  );
}
//Stop the current open loading dilaog

// This method doesnot return anything
static stopLoading(){
  Navigator.of(Get.overlayContext!).pop();//close the dialog using navigation
}
}