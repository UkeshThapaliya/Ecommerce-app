import "package:flutter/material.dart";

// this is light and dark outlined button theme
class ThOutLinedButtonTheme{
  ThOutLinedButtonTheme._();// to avoid creating instances

  //light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.green),
    textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    )
  );

  //dark theme
    static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
    foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.green),
    textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    )
  );
  
}