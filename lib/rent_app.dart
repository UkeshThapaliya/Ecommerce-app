import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:rent_onway/features/authentication/screens/onboarding/onboarding.dart";
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
      home: const OnBoardingScreen(),
    );
  }
}
