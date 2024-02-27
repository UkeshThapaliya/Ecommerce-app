import "package:flutter/material.dart";

//this is custom class for the light and dark text theme
class ThCheckboxTheme{
  ThCheckboxTheme._(); // just to avoid the creating instances
  //Custom light text theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)){
      return Colors.green;
    }else{
      return Colors.transparent;
    }
    }),
  );

//Custom dark text theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
    if (states.contains(MaterialState.selected)){
      return Colors.green;
    }else{
      return Colors.transparent;
    }
    }),
  );
}