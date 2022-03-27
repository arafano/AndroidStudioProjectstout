/*
import 'package:flutter/material.dart';
import 'screens/page_de_garde.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application KLANDEAU',
      home: PagedeGarde(),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'screens/premiere_page.dart';
import 'screens/page_de_garde.dart';
import 'inscriptionetconnexion/inscription.dart';
import 'inscriptionetconnexion/connexion.dart' ;
import 'mettreuneannonce/planification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: <String, WidgetBuilder>{
        '/pagedegarde': (BuildContext context) => PagedeGarde(),
        //'/horizontalpage': (BuildContext context) => HorizontalPage(),
        //'/inscriptionpage': (BuildContext context) => Inscription(),
        //'/connexionpage': (BuildContext context) => Connexion(),
        //'/plannificationpage': (BuildContext context) => Plannification()
        //'/home': (BuildContext context) => HomePage(),
      },
      //initialRoute: '/horizontalpage',
      initialRoute: '/pagedegarde',
      //initialRoute: '/inscriptionpage',
      //initialRoute: '/connexionpage',
      //initialRoute: '/plannificationpage',

    );
  }
}

