import 'package:atelier_devmobile_festival/api/api.dart';
import 'package:atelier_devmobile_festival/model/postModel.dart';
import 'package:atelier_devmobile_festival/model/userModel/userModel.dart';
import 'package:atelier_devmobile_festival/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class AppPost extends StatefulWidget {
  const AppPost({Key? key}) : super(key: key);

  @override
  _AppPostState createState() => _AppPostState();
}

class _AppPostState extends State<AppPost> {
  add() async {}

  CustomTextField titre =
      new CustomTextField(placeholder: "Entrer le titre", title: "Titre");

  CustomTextField detail = new CustomTextField(
      placeholder: "Entrer le detail", title: "Détail", line: 5);

  PostModel myPost = new PostModel(id_post: '', date_post: '', user: '');
  bool post = false;

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    titre.err = "veillez entrer le titre";
    detail.err = "veillez entrer le détail";

    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter un Post"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _key,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Nouvelle Publication",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                titre.textFormField(),
                SizedBox(
                  height: 10,
                ),
                detail.textFormField(),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.redAccent.withOpacity(.7))),
                  onPressed: post
                      ? null
                      : () async {
                          if (_key.currentState!.validate()) {
                            setState(() {
                              post = true;
                            });
                            myPost.titre = titre.value;
                            myPost.detail = detail.value;
                            myPost.user = UserModel.sessionUser.id;
                            var result = await Api.addPost(myPost.toMap());
                            if (result != null && result[0]) {
                              setState(() {
                                post = false;
                              });
                              Navigator.of(context).pop();
                            } else if (result != null && !result[0]) {
                              setState(() {
                                post = false;
                              });
                            } else {
                              setState(() {
                                post = false;
                              });
                            }
                          }
                        },
                  child: Text(
                    "Publier",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
