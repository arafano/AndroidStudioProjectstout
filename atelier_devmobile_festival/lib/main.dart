import 'package:atelier_devmobile_festival/screen/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.orange,
      )),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
