import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class UserModel {
  String id;
  String nom;
  String email;

  UserModel({this.id = "", this.nom = "", this.email = ""});

  static UserModel sessionUser = "user" as UserModel;

  factory UserModel.fromJson(Map<String, dynamic> i) =>
      UserModel(id: i['id'], nom: i['nom'], email: i['email']);
  Map<String, dynamic> toMap() => {"id": id, "nom": nom, "email": email};

  static void saveUser(UserModel user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = json.encode(user.toMap());
    pref.setString("user", data);
    pref.commit();
  }

  static getUser() async {
    var beta = null;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = pref.getString("user");
    if (data != null) {
      var decode = json.decode(data);
      var user = await UserModel.fromJson(decode);
      sessionUser = user;
    } else {
      sessionUser = beta;
    }
    //sessionUser = user;
  }

  static void logOut() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    var gamma = null;
    p.setString("user", "");
    sessionUser = gamma;
    p.commit();
  }
}
