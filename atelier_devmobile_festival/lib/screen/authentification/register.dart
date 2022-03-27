import 'dart:convert';

import 'package:atelier_devmobile_festival/widgets/customTextField.dart';
import 'package:atelier_devmobile_festival/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  final VoidCallback visible;
  Register(this.visible);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String err = "";
  bool _loading = false;
  CustomTextField emailText = new CustomTextField(
    title: "Email",
    placeholder: "Enter email",
  );

  CustomTextField nameText = new CustomTextField(
    title: "Name",
    placeholder: "Enter name",
  );

  void register(String name, String email, String pass) async {
    setState(() {
      _loading = true;
    });
    final response = await http.post(
        Uri.parse(
            "https://festivalapplication.000webhostapp.com/atelier_devmobile_festival/register.php"),
        body: {"name": name, "email": email, "pass": pass});
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['data'];
      int succes = result[1];
      if (succes == 1) {
        setState(() {
          err = result[0];
          _loading = false;
        });
      } else {
        setState(() {
          err = result[0];
          _loading = false;
        });
      }
    }
  }

  CustomTextField passText = new CustomTextField(
      title: "Password", placeholder: "**********", ispass: true);

  CustomTextField confirmPassText = new CustomTextField(
      title: "Confirm Password", placeholder: "**********", ispass: true);

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    emailText.err = "enter email";
    nameText.err = "enter name";
    passText.err = "enter password";

    return _loading
        ? Loading()
        : Scaffold(
            body: Center(
              child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.all(30),
                      child: Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            nameText.textFormField(),
                            SizedBox(
                              height: 30,
                            ),
                            emailText.textFormField(),
                            SizedBox(
                              height: 10,
                            ),
                            passText.textFormField(),
                            SizedBox(height: 10),
                            confirmPassText.textFormField(),
                            SizedBox(height: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.redAccent.withOpacity(.7))),
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  //print(emailText.value);
                                  //print("ok");
                                  if (passText.value == confirmPassText.value) {
                                    register(nameText.value, emailText.value,
                                        passText.value);
                                  } else {
                                    print("les mots de passes sont différents");
                                  }
                                }
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Avez-vous un compte ?'),
                                TextButton(
                                    onPressed: widget.visible,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(color: Colors.redAccent),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              err,
                              style: TextStyle(color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ))),
            ),
          );
    ;
  }
}
