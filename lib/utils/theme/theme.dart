import 'package:flutter/material.dart';

class ThAppTheme{
  ThAppTheme._();   //constructor is private now
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThAppTheme.lightTextTheme,
    elevatedButtonTheme: 
  );

   static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ThAppTheme.darkTextTheme,
  );
} 
