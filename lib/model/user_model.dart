import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? uid;
  String? username;
  String? email;

  UserModel({this.uid, this.username, this.email});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      username: map['username'],
      email: map['email'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
    };
  }

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'],
        username: json['username'],
        email: json['email'],
      );
}
