import 'package:atelier_devmobile_festival/api/api.dart';
import 'package:atelier_devmobile_festival/model/postModel.dart';
import 'package:atelier_devmobile_festival/model/userModel/userModel.dart';
import 'package:flutter/material.dart';

class PostUserd extends StatefulWidget {
  const PostUserd({Key? key}) : super(key: key);

  @override
  _PostUserdState createState() => _PostUserdState();
}

class _PostUserdState extends State<PostUserd> {
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
      setState(() {
        isok = true;
      });
      for (i in data) {
        setState(() {
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
  List valueCheck = [];
  List idposts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Modifier un Post"), centerTitle: true, actions: [
        IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: () async {
              if (idposts.length > 0) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Supprimer"),
                        content: Text("Voulez-vous supprimer?"),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                var isdelete = await Api.deletePost(idposts);

                                if (isdelete != null) {
                                  if (isdelete[0]) {
                                    setState(() {
                                      idposts.clear();
                                      Navigator.of(context).pop();
                                      getPostUser();
                                    });
                                  }
                                } else {
                                  Navigator.of(context).pop();
                                }
                              },
                              child: Text("Oui")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Non")),
                        ],
                      );
                    });
              }
            }),
      ]),
      body: isok
          ? ListView.builder(
              itemCount: postModel.length,
              itemBuilder: (context, i) {
                final post = postModel[i];
                valueCheck.add(false);
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
                            child: Checkbox(
                              value: valueCheck[i],
                              onChanged: (bool? value) {
                                setState(() {
                                  valueCheck[i] = value;
                                  if (valueCheck[i])
                                    idposts.add(post.id_post);
                                  else
                                    idposts.remove(post.id_post);
                                  print(idposts);
                                });
                              },
                            )),
                      ],
                    ),
                  ),
                );
              })
          : Center(child: CircularProgressIndicator()),
    );
  }
}
