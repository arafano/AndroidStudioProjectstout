import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:klandeau_my_app/components/backgroundpremierepage.dart';

import '/Screens/login.dart';

class PremierePageScreen extends StatefulWidget {
  //const PremierePageScreen({Key? key}) : super(key: key);
  @override
  _PremierePageScreenState createState() => _PremierePageScreenState();
}

class _PremierePageScreenState extends State<PremierePageScreen> {
  bool isChecked = false;
  TextEditingController dateController = TextEditingController();

  //DateTime pickedDate;

  /***
      @override
      void initState() {
      super.initState();
      pickedDate = DateTime.now();
      }
   ***/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundPremierepage(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.18,
                padding: EdgeInsets.only(left: 10.0, right: 70),
                //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                //alignment: Alignment.Left,

                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      bottom: 20,
                      child: Text(
                        "Klandeau",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF1E4E4),
                            fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                padding: EdgeInsets.only(left: 10.0, right: 70),
                //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                //alignment: Alignment.Left,

                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 66,
                            height: 38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/imagescovoitjpeg.jpg'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ],
                ),
              ),
              Container(
                //color: Colors.red[200],

                //color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.16,

                padding: EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 3.0, top: 2.0),
                //alignment: Alignment.centerRight,
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                child: Stack(
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      children: [
                        RaisedButton(
                          child: Text("CONNEXION"),
                          textColor: Colors.black,
                          color: Color(0XFFC4C4C4),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Text("INSCRIPTION"),
                          textColor: Colors.white,
                          color: Color(0XFF25AB3A),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,

                //color: Colors.green[200],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.10,
                padding: EdgeInsets.only(left: 20.0, right: 30.0, top: 9.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Lieu de départ",
                        labelStyle: TextStyle(color: Colors.red),
                        hintText: "Rennes,France",
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red, style: BorderStyle.solid),
                          //hintText:"Rennes,France"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,

                //color: Colors.green[200],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.10,
                padding: EdgeInsets.only(left: 20.0, right: 30.0, top: 9.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Lieu d'arrivée",
                        labelStyle: TextStyle(color: Colors.red),
                        hintText: "Nantes,France",
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red, style: BorderStyle.solid),
                          //hintText:"Rennes,France"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,

                //color: Colors.blue[200],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.10,
                padding: EdgeInsets.only(left: 50.0, right: 0.0, top: 0.0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: dateController,
                        showCursor: true,
                        readOnly: true,
                        onTap: () {
                          DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime(1910, 1, 1),
                            currentTime: DateTime.now(),
                            onConfirm: (date) {
                              setState(() {
                                dateController.text =
                                    date.toString().split(" ").first;
                              });
                            },
                            locale: LocaleType.fr,
                          );
                        },
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Date",
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "13/10",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red, style: BorderStyle.none),
                            //hintText:"Rennes,France"
                          ),
                        ),
                      ),
                    ),
                    buildCheckbox(),
                    Flexible(
                      child: Text(
                        "trajet regulier",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.red[200],

                //color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,

                padding: EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 3.0, top: 70.0),
                //alignment: Alignment.centerRight,
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                child: Stack(
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      children: [
                        RaisedButton(
                          child: Text("RECHERHER UN COVOITURAGE"),
                          textColor: Colors.black,
                          color: Color(0XFF25AB3A),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Text("METTRE UNE ANNONCE"),
                          textColor: Colors.black,
                          color: Color(0XFFB1C051),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                        ),
                        RaisedButton(
                          child: Text("PARTIR MAINTENANT"),
                          textColor: Colors.black,
                          color: Color(0XFFC4C4C4),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildCheckbox() => Checkbox(
        value: isChecked,
        onChanged: (bool? b) {
          setState(() {
            isChecked = b!;
          });
        },
      );
}
