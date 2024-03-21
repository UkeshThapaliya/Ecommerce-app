class Thvalidator{
  //Empty text validation
  static String? validateEmptyText(String? fieldName, String? value){
    if(value == null || value.isEmpty){
      return "$fieldName is required.";
    }
    return null;
  }

  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return "Email is required.";
    }
    // Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return "Invalid email address";
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return "Password is required.";
    }
  //check for password length
  if(value.length < 8){
    return " Password must be at least 8 characters long";
  }
  //check for the special characters
  if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}<>]'))){
    return "Password must contain at least one special character";
  }
  return null;
  }
  //for phone number
  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return "Phone number is required.";
    }
    //regular expression for phone number validation i assume 10 digit phone number format
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)){
      return "Invalid phone number format (10 digit required)";
    }
    return null;
  }


}