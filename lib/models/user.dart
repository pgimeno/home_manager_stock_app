import 'dart:ffi';

class User {
  final int id;
  final String username;
  final String password;
  final Bool isFirstLogin;

  User(
      {required this.id,
      required this.username,
      required this.password,
      required this.isFirstLogin});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        password: json['password'],
        isFirstLogin: json['isFirstLogin']);
  }

Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'isFirstLogin': isFirstLogin,
    };
  } 

}