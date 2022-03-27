import 'package:atelier_devmobile_festival/model/userModel/userModel.dart';
import 'package:atelier_devmobile_festival/screen/authentification/register.dart';
import 'package:flutter/material.dart';

import 'authentification/login.dart';
import 'home/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = true, login = false;
  isconnected() async {
    await UserModel.getUser();
    if (UserModel.sessionUser == null) {
      setState(() {
        login = false;
      });
    } else {
      setState(() {
        login = true;
      });
    }
  }

  toggle() {
    setState(() {
      visible = !visible;
    });
  }

  islogin() {
    setState(() {
      login = !login;
    });
  }

  @override
  void initState() {
    super.initState();
    isconnected();
  }

  @override
  Widget build(BuildContext context) {
    return login
        ? Home(login: islogin)
        : visible
            ? Login(toggle, islogin)
            : Register(toggle);
  }
}
