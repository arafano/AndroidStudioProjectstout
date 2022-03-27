import 'package:atelier_devmobile_festival/api/api.dart';
import 'package:atelier_devmobile_festival/model/postModel.dart';
import 'package:atelier_devmobile_festival/model/userModel/userModel.dart';
import 'package:atelier_devmobile_festival/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class PostUser extends StatefulWidget {
  const PostUser({Key? key}) : super(key: key);

  @override
  _PostUserState createState() => _PostUserState();
}

class _PostUserState extends State<PostUser> {
  List<PostModel> postModel = [];
  bool isok = false;
  Map<String, dynamic> i = Map();

  getPostUser() async {
    setState(() {
      isok = false;
    });
    var data = await Api.getPostUser(UserModel.sessionUser.id);
    if (data != null) {
      postModel.clear();
      for (i in data) {
        setState(() {
          isok = true;
          postModel.add(PostModel.fromJson(i));
        });
      }
    } else {
      setState(() {
        isok = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPostUser();
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Modifier un Post"), centerTitle: true, actions: [
        IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              print("test");
              getPostUser();
            }),
      ]),
      body: isok
          ? ListView.builder(
              itemCount: postModel.length,
              itemBuilder: (context, i) {
                final post = postModel[i];
                return Card(
                  color: Colors.green[100],
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(post.titre,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Divider(),
                        Text(post.detail),
                        Divider(),
                        Text("publier le: " + post.date_post),
                        Align(
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UpdatePost(
                                                  model: post,
                                                )));
                                  }),
                            ))
                      ],
                    ),
                  ),
                );
              })
          : Center(child: CircularProgressIndicator()),
    );
  }
}

class UpdatePost extends StatefulWidget {
  PostModel model;
  UpdatePost({required this.model});
  @override
  _UpdatePostState createState() => _UpdatePostState();
}

class _UpdatePostState extends State<UpdatePost> {
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
    titre.initialValue = widget.model.titre;
    detail.initialValue = widget.model.detail;
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
                  "Modifier la Publication",
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
                            myPost.id_post = widget.model.id_post;
                            var result = await Api.updatePost(myPost.toMap());

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
                    "Modifier",
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
