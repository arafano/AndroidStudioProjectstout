import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:klandeau_my_app/Screens/register.dart';

import '/components/backgroundLogin.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Backgroundlogin(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                //padding: EdgeInsets.symmetric(horizontal: 40),

                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 240,
                      left: 70,
                      child: Text(
                        "CONNEXION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF1E4E4),
                            fontSize: 36),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(hintText: "Adresse email"),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(hintText: "Mot de passe"),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Mot de passe oublié ?",
                  style: TextStyle(fontSize: 17, color: Color(0XFF08ED03)),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 37, 171, 58),
                          Color.fromARGB(255, 37, 171, 58)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "SE CONNECTER",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()))
                  },
                  child: Text(
                    "Pas de compte ? Inscription",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF302E63)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
