import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:rent_onway/bindings/general_bindings.dart";
import "package:rent_onway/utils/constants/color.dart";
import "package:rent_onway/utils/theme/theme.dart";

//Using this class to setup all the helper function
class RentApp extends StatelessWidget {
  const RentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ThAppTheme.lightTheme,
      darkTheme: ThAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      //Show loader or circular progress indicator
      home: const Scaffold(backgroundColor: ThColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
} 


  