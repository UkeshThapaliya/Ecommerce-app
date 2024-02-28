import "package:flutter/material.dart";

//light dark theme for elevated button
class ThElevatedButtonTheme{
ThElevatedButtonTheme._(); //avoid creating instances

//light theme
 static final lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor:Colors.white,
    backgroundColor:Colors.green,
    disabledForegroundColor:Colors.grey,
    disabledBackgroundColor:Colors.grey,
    side:const BorderSide(color:Colors.green),
    padding:const EdgeInsets.symmetric(vertical: 18),
    textStyle:const TextStyle(fontSize:16, color:Colors.white,fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);
  //dark theme
 static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor:Colors.white,
    backgroundColor:Colors.green,
    disabledForegroundColor:Colors.grey,
    disabledBackgroundColor:Colors.grey,
    side:const BorderSide(color:Colors.green),
    padding:const EdgeInsets.symmetric(vertical: 18),
    textStyle:const TextStyle(fontSize:16, color:Colors.white,fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);
}
