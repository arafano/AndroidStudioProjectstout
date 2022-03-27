import 'package:atelier_devmobile_festival/api/api.dart';
import 'package:atelier_devmobile_festival/model/postModel.dart';
import 'package:atelier_devmobile_festival/model/userModel/userModel.dart';
import 'package:atelier_devmobile_festival/screen/home/deletePage.dart';
import 'package:atelier_devmobile_festival/screen/home/updatePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'addpage.dart';

class Home extends StatefulWidget {
  final VoidCallback login;
  Home({required this.login});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color whiteColor = Colors.white;
  TextStyle style = TextStyle(color: Colors.white);
  List<PostModel> postModel = [];
  Map<String, dynamic> i = Map();
  getdata() async {
    var data = await Api.getPost();
    if (data != null) {
      postModel.clear();
      for (i in data) {
        setState(() {
          postModel.add(PostModel.fromJson(i));
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Page d'accueil"), centerTitle: true, actions: [
        IconButton(
            icon: Icon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.white,
            ),
            onPressed: () {
              widget.login.call();
              UserModel.logOut();
            }),
        IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              print("test");
              getdata();
            }),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  icon: Icon(Icons.add, color: whiteColor),
                  label: Text(
                    'Ajouter',
                    style: style,
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green, primary: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AppPost()));
                  },
                ),
                TextButton.icon(
                  icon: Icon(Icons.edit, color: whiteColor),
                  label: Text(
                    'Modifier',
                    style: style,
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow, primary: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostUser()));
                  },
                ),
                TextButton.icon(
                  icon: Icon(Icons.delete, color: whiteColor),
                  label: Text(
                    'Supprimer',
                    style: style,
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red, primary: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostUserd()));
                  },
                )
              ],
            ),
            Container(
                //color: Colors.lightBlue,
                height: MediaQuery.of(context).size.height / 1.27,
                child: ListView.builder(
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Divider(),
                              Text(post.detail),
                              Divider(),
                              Text("publier le: " + post.date_post)
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
