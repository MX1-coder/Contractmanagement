import 'package:firebase_auth/firebase_auth.dart';

class UserModel{
  String? uid;
  String? firstName;
  String? lastName;
  String? companyName;
  String? companyMail;
  String? contactNum;

  UserModel({this.uid, this.firstName, this.lastName, this.companyName,
      this.companyMail, this.contactNum, });



  //receiving data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid:map['uid'],
      firstName:  map['firstName'],
      lastName: map['lastName'],
      companyName:map['companyName'],
      companyMail: map['companyMail'],
      contactNum: map['contactNum'],
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return {
    'uid' :uid ,
      'firstName':firstName,
      'lastName' :lastName,
      'companyName':companyName,
      'companyMail':companyMail,
      'contactNum':contactNum
    };
  }
}