
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff302e63),
      appBar: AppBar(
        title: Text('Ma carte de visite'),
        backgroundColor: Colors.transparent,
        elevation: 0.0
      ),
      body: Center(
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/imagescovoit.png'),
          )
      )
    );
  }
}
*/


import 'package:flutter/material.dart';


class PagedeGarde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group1Widget - GROUP
    return Container(
      decoration: const BoxDecoration(color: Color(0xff302e63)),

      child: Stack(
          children: <Widget>[
        Positioned(
                  top: 43,
                  left: 24,
                  child: Text('Klandeau', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(217, 233, 31, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,
                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
      Positioned(
                  top: 249,
                  left: 27,
                  child: Text('Au quotidien ou pour des \n trajets occasionnels, le \n covoiturage est exceptionnel \n ! \n', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 91,
                  left: 24,
                  child: Container(
                      width: 66,
                      height: 38,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/imagescovoit.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
      ]
        ),
    );
  }
}



