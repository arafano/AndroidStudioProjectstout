import 'dart:convert';

import 'package:atelier_devmobile_festival/crypt/encrypt.dart';
import 'package:http/http.dart' as http;

class Api {
  static addPost(Map data) async {
    final response = await http.post(Uri.parse(Url.addPost),
        body: {"data": encrypt(jsonEncode(data))});

    if (response.statusCode == 200) {
      var result = jsonDecode(decrypt(response.body));
      if (result[0])
        return result;
      else
        return null;
    } else {
      return null;
    }
  }

  static getPost() async {
    final response = await http.get(Uri.parse(Url.getPost));
    if (response.statusCode == 200) {
      return jsonDecode(decrypt(response.body));
    } else {
      return null;
    }
  }

  static getPostUser(String id) async {
    final response = await http.post(Uri.parse(Url.uPost),
        body: {"id_user": encrypt(id), "type": encrypt("1")});

    if (response.statusCode == 200) {
      return jsonDecode(decrypt(response.body));
    } else {
      return null;
    }
  }

  static updatePost(Map data) async {
    final response = await http.post(Uri.parse(Url.uPost),
        body: {"data": encrypt(jsonEncode(data)), "type": encrypt("2")});

    if (response.statusCode == 200) {
      var result = jsonDecode(decrypt(response.body));
      if (result[0])
        return result;
      else
        return null;
    } else {
      return null;
    }
  }

  static deletePost(List data) async {
    final response = await http.post(Uri.parse(Url.delete), body: {
      "id_posts": encrypt(jsonEncode(data)),
    });

    if (response.statusCode == 200) {
      var result = jsonDecode(decrypt(response.body));
      print(result[0]);
      if (result[0])
        return result;
      else
        return null;
    } else {
      return null;
    }
  }
}

class Url {
  static String addPost =
      "https://festivalapplication.000webhostapp.com/atelier_devmobile_festival/addPost.php";
  static String getPost =
      "https://festivalapplication.000webhostapp.com/atelier_devmobile_festival/getpost.php";

  static String uPost =
      "https://festivalapplication.000webhostapp.com/atelier_devmobile_festival/updatepost.php";

  static String delete =
      "https://festivalapplication.000webhostapp.com/atelier_devmobile_festival/deletepost.php";
}
