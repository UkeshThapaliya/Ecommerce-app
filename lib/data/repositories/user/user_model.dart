
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rent_onway/utils/formatter/formatter.dart';

class UserModel{
  //Keeping those value final which i do not want to update
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNo;
  String profilePicture;

  //Constructor for usermodel
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNo,
    required this.profilePicture,

  });

  //helper function to get the full name
  String get fullName => '$firstName $lastName';

  //helper function to format the phone number 
  String get formattedPhoneNo => ThFormatter.formatPhoneNumber(phoneNo);

  //Static function to generated a username from full name
  static String generateUserName(fullName){
    List<String> nameParts =fullName.splict(" ");
    String firstName = nameParts[0].toLowerCase ();
    String lastName = nameParts.length >1 ? nameParts[1].toLowerCase(): "";

    String camelCaseUsername = "$firstName$lastName";//combine first and last name
    String usernameWithPrefix = "cwt_$camelCaseUsername"; //Add cwt prefix
    return usernameWithPrefix;
  }
//Static function to create an empty user model
static UserModel empty() => UserModel(id: '',firstName: '',lastName: '',email:'',phoneNo: '', profilePicture: '', username: '');

//Convert model to Json structure for storing data in firebase
Map<String, dynamic> toJson(){
  return{
    'FirstName': firstName,
    'Lastname': lastName,
    'Username':username,
    'Email': email,
    'PhoneNo': phoneNo,
    'ProfilePicture': profilePicture,
  };
}

//Create a usermodel from factory method from a firebase docment snapshot
factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
  if(document.data() != null){
    final data = document.data()!;
    return UserModel(
      id:document.id,
       firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
         username: data['Username'] ?? '',
          email: data['Email'] ?? '',
           phoneNo: data['PhoneNo'] ?? '',
            profilePicture: data['ProfilePicture'] ?? '',
           );
  } else {
    // Handle the case where document data is null
    throw StateError('Document data is null');
}

}

}