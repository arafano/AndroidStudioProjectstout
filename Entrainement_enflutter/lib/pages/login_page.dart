import 'package:entrainement_enflutter/config.dart';
import 'package:entrainement_enflutter/models/login_request_model.dart';
import 'package:entrainement_enflutter/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:snippet_coder_utils/FormHelper.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAPIcallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? password;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        //body: ProgressHUD(
        body: ModalProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),

          ),
          inAsyncCall: isAPIcallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),


      ),
    );
  }

  Widget _loginUI(BuildContext context) {
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
              "Login",
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
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, top: 10),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Forget Password ?',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,

                      ),
                      recognizer: TapGestureRecognizer()..onTap=() {
                        print("Forget Password");

                      }

                    ),


                  ],

                ),
              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton(
                "Login",
                    () {
                      if(validateAndSave()) {
                      setState(() {
                      isAPIcallProcess = true;

                      });

                      LoginRequestModel model = LoginRequestModel(
                      username: username!,
                      password: password!,

                          );
                      APIService.login(model).then((response) {

                        setState(() {
                          isAPIcallProcess = false;

                        });



                      if(response) {
                      Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false,);
                        }
                        else {FormHelper.showSimpleAlertDialog(context, Config.appName,
                        "Invalid Username/Password !",
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
          SizedBox(height: 20,
          ),
          Center(
            child: Text("OR", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, top: 10),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(text: "Don't have an account?  "),
                    TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,

                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap=() {
                          Navigator.pushNamed(context, "/register");

                        },

                    ),


                  ],

                ),
              ),

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
    }
    else {
      return false;
    }

  }
}


