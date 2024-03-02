import "package:flutter/material.dart";

//Using this class to setup all the helper function
class RentApp extends StatelessWidget {
  const RentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
