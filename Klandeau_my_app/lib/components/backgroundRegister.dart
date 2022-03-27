import 'dart:ui';

import 'package:flutter/material.dart';

class Backgroundregister extends StatelessWidget {
  final Widget child;

  const Backgroundregister({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(color: Color(0xff302e63)),
      width: double.infinity,
      height: size.height,
      child: Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 160,
              left: 0,
              child: Container(
                  width: 400,
                  height: 640,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(134, 98, 44, 1),
                  ))),
          child
        ],
      ),
    );
  }
}
