import 'package:flutter/material.dart';

class BackgroundPremierepage extends StatelessWidget {
  final Widget child;

  const BackgroundPremierepage({
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
              top: 300,
              left: 0,
              child: Container(
                  width: 400,
                  height: 520,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(20, 40, 50, 1),
                  )
              )
          ),





          child
        ],
      ),
    );
  }
}