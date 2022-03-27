import 'package:flutter/material.dart';
import 'package:klandeau_my_app/components/backgroundRegister.dart';
import 'dart:ui';


import '/Screens/login.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Backgroundregister(
        child: SingleChildScrollView(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  //color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,

                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 70,
                        bottom: 20,
                        child: Text(
                          "REGISTER",
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
                  alignment: Alignment.bottomCenter,

                  //color: Colors.red[400],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),

                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Name"),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,

                  //color: Colors.blue[400],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),

                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Mobile Number"),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,

                  //color: Colors.green[200],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Username"),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,

                  //color: Colors.yellow[200],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.red[200],

                  //color: Colors.yellow,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,

                  padding: EdgeInsets.only(
                      left: 30.0, right: 40.0, bottom: 3.0, top: 2.0),
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
                            child: Text("SIGN UP"),
                            textColor: Colors.black,
                            color: Colors.green,
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text("Already Have an Account? Sign in"),
                            textColor: Colors.white,
                            color: Colors.blue,
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
              ]),
        ),
      ),
    );
  }
}

/**
    Container(
    alignment: Alignment.bottomCenter,


    //color: Colors.red[200],
    width: MediaQuery.of(context).size.width,

    height: MediaQuery.of(context).size.height*0.15,

    padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 3.0, top:2.0),


    //margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15.0),
    child: GestureDetector(
    onTap: () => {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
    },
    child: Text(
    "Already Have an Account? Sign in",
    style: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2661FA)
    ),

    ),
    ),
    ),
    ],
    ),
    ),
    ),
    );
    }
    }


    //SizedBox(height: 0.001),



    //SizedBox(height: 3.0,),

    Container(
    alignment: Alignment.bottomCenter,

    //color: Colors.red[400],
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.33,
    padding: EdgeInsets.only(left: 30.0, right: 30.0, top:10.0),


    child: Column(
    children: <Widget>[
    TextField(
    decoration: InputDecoration(
    labelText: "Name"
    ),
    ),

    SizedBox(height: size.height * 0.02),
    TextField(
    decoration: InputDecoration(
    labelText: "Mobile Number"
    ),
    ),

    SizedBox(height: size.height * 0.02),
    TextField(
    decoration: InputDecoration(
    labelText: "Username"
    ),
    ),

    SizedBox(height: size.height * 0.02),
    TextField(
    decoration: InputDecoration(
    labelText: "Password"
    ),
    obscureText: true,
    ),
    ],
    ),
    ),


    SizedBox(height: size.height * 0.02),

    Container(
    //color: Colors.yellow,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.33,

    padding: EdgeInsets.only(left: 20.0, right: 30.0, bottom: 3.0),
    //alignment: Alignment.centerRight,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

    child: Stack(
    children: <Widget>[
    Positioned(
    left: 0,
    top: 200,
    child: RaisedButton(
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    textColor: Colors.white,
    padding: const EdgeInsets.all(0),
    child: Container(
    alignment: Alignment.center,
    height: 50.0,
    width: size.width * 0.5,
    decoration: new BoxDecoration(
    borderRadius: BorderRadius.circular(80.0),
    gradient: new LinearGradient(
    colors: [
    Color.fromARGB(255, 255, 136, 34),
    Color.fromARGB(255, 255, 177, 41)
    ]
    )
    ),
    padding: const EdgeInsets.all(0),
    child: Text(
    "SIGN UP",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontWeight: FontWeight.bold
    ),
    ),

    ),

    ),
    ),



    Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*10,
    padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 3.0),
    alignment: Alignment.centerRight,
    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: GestureDetector(
    onTap: () => {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
    },
    child: Text(
    "Already Have an Account? Sign in",
    style: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2661FA)
    ),
    ),
    ),
    )
 **/
