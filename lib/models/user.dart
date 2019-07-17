//this model used data

import 'dart:convert';

class User {
  String name;
  String email;
  String studentcode;
  String phoneno;
  String password;
  List<String> foodpreference;
  List<String> interest;
  String belongto;
  String flagurl;
  String bio;
  List<int> usercourses;
  List<int> usersubcourses;
  String profilepic;
  List<String> verificationimg;

  User(
      {this.name,
      this.email,
      this.studentcode,
      this.phoneno,
      this.password,
      this.foodpreference,
      this.interest,
      this.belongto,
      this.flagurl,
      this.bio,
      this.usercourses,
      this.usersubcourses,
      this.profilepic,
      });

  factory User.fromJson(Map<String, dynamic> json) => new User(
      name: json["name"],
      email: json["email"],
      studentcode: json["studentcode"],
      phoneno: json["phoneno"],
      password: json["password"],
      foodpreference: json["foodpreference"],
      interest: json["interest"],
      belongto: json["belongto"],
      flagurl: json["flagurl"],
      bio: json["bio"],
      usercourses: json["usercourses"],
      usersubcourses: json["usersubcourses"],
      profilepic: json["profilepic"]);

  Map<String, dynamic> toJson() => {"username": name, "password": password};
}

User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromJson(jsonData);
}

String userToJson(User data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}
