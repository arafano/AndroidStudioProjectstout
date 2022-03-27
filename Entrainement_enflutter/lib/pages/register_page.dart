import 'package:entrainement_enflutter/models/register_request_model.dart';
import 'package:entrainement_enflutter/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isAPIcallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? password;
  String? email;


  @override
  Widget build(BuildContext context) {
  return SafeArea(
  child: Scaffold(
  backgroundColor: HexColor("#283B71"),
  //body: ProgressHUD(
  body: ModalProgressHUD(
  child: Form(
  key: globalFormKey,
  child: _registerUI(context),

              ),
              inAsyncCall: isAPIcallProcess,
              opacity: 0.3,
              key: UniqueKey(),
              ),


              ),
              );
              }


  Widget _registerUI(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height / 2.7,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),

              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/covoitimg.jpg",
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            bottom: 30,
            top: 50,

          ),
          child: Text(
            "Register",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,

            ),
          ),
        ),
        FormHelper.inputFieldWidget(
          context,
          const Icon(Icons.person),
          "username",
          "UserName",
              (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return "Username can\t be empty.";
            }
            return null;
          },

              (onSavedVal) {
            username = onSavedVal;
          },
          borderFocusColor: Colors.white,
          prefixIconColor: Colors.white,
          borderColor: Colors.white,
          textColor: Colors.white,
          hintColor: Colors.white.withOpacity(0.7),
          borderRadius: 10,

        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: FormHelper.inputFieldWidget(
            context,
            const Icon(Icons.person),
            "password",
            "Password",
                (onValidateVal) {
              if (onValidateVal.isEmpty) {
                return "Password can\'t be empty.";
              }
              return null;
            },

                (onSavedVal) {
              password = onSavedVal;
            },
            borderFocusColor: Colors.white,
            prefixIconColor: Colors.white,
            borderColor: Colors.white,
            textColor: Colors.white,
            hintColor: Colors.white.withOpacity(0.7),
            borderRadius: 10,
            obscureText: hidePassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              color: Colors.white.withOpacity(0.7),
              icon: Icon(
                hidePassword ? Icons.visibility_off : Icons.visibility,
              ),

            ),
          ),
        ),
        FormHelper.inputFieldWidget(
          context,
          const Icon(Icons.person),
          "email",
          "email",
              (onValidateVal) {
            if (onValidateVal.isEmpty) {
              return "Email can\t be empty.";
            }
            return null;
          },

              (onSavedVal) {
            email = onSavedVal;
          },
          borderFocusColor: Colors.white,
          prefixIconColor: Colors.white,
          borderColor: Colors.white,
          textColor: Colors.white,
          hintColor: Colors.white.withOpacity(0.7),
          borderRadius: 10,

        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: FormHelper.submitButton(
            "Register",
                () {
                      if(validateAndSave()) {
                      setState(() {
                      isAPIcallProcess = true;

                                });

                            RegisterRequestModel model = RegisterRequestModel(
                            username: username!,
                            password: password!,
                            email: email!,

                                );
                                APIService.register(model).then((response) {


                                  setState(() {
                                    isAPIcallProcess = false;

                                  });


                                if(response.data != null){
                                  FormHelper.showSimpleAlertDialog(context,
                                    Config.appName,
                                    "Registration Successfull. Please login to the account !",
                                    "OK",
                                        () {

                                        Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          '/login',
                                              (route) => false,
                                        );
                                    },
                                  );

                                } else {

                                  FormHelper.showSimpleAlertDialog(context,
                                  Config.appName,
                                  //response.message,
                                    "erroner ressayer",
                                  "OK",
                                  () {Navigator.pop(context);
                                  },
                                  );

                                  }

                                  });
                                  }
                                  },

            btnColor: HexColor("#283B71"),
            borderColor: Colors.white,
            txtColor: Colors.white,
            borderRadius: 10,

          ),
        ),


      ],
    ),
  );

    }
      bool validateAndSave() {
          final form = globalFormKey.currentState;
            if (form!.validate()) {
            form.save();
          return true;
        } else {
            return false;
              }
          }
}





