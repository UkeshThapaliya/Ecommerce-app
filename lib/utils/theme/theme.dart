import 'package:flutter/material.dart';
import 'package:rent_onway/utils/theme/customTheme/appbar_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/buttomsheet_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/checkbox_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/chip_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/elevated_buttontheme.dart';
import 'package:rent_onway/utils/theme/customTheme/outlinedbutton_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/text_theme.dart';
import 'package:rent_onway/utils/theme/customTheme/textfeild_theme.dart';
class ThAppTheme{


  ThAppTheme._();   //constructor is private now
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TxtTheme.lightTextTheme,
    chipTheme: ThChipTheme.lightChipTheme,
    appBarTheme: ThAppBarTheme.lightAppBarTheme,
    checkboxTheme: ThCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ThBottomSheetTheme.lightBottomTheme,
    elevatedButtonTheme: ThElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ThOutLinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ThTextFeildTheme.lightInputDecorationTheme,
  );

   static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TxtTheme.darkTextTheme,
    chipTheme: ThChipTheme.darkChipTheme,
    appBarTheme: ThAppBarTheme.darkAppBarTheme,
    checkboxTheme: ThCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ThBottomSheetTheme.darkBottomTheme,
    elevatedButtonTheme: ThElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ThOutLinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ThTextFeildTheme.darkInputDecorationTheme,
  );
}
