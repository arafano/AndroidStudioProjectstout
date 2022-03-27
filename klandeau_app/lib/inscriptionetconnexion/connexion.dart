import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:dotted_line/dotted_line.dart';


class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group3Widget - GROUP
    return Container(
        decoration: const BoxDecoration(color: Color(0xff302e63)),

        width: 985,
        height: 618,

        child: Stack(
            children: <Widget>[

              Positioned(
                  top: 100,
                  left: 0,
                  child: Container(
                      width: 400,
                      height: 440,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(134, 98, 44, 1),
                      )
                  )
              ),

              Positioned(
                  top: 40,
                  left: 70,
                  child: Text(
                    'Connexion', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),


              Positioned(
                  top: 410,
                  left: 70,
                  child: Text('Mot de passe oublié ?', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(7, 236, 2, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
              Positioned(
                  top: 490,
                  left: 94,
                  child: Container(
                      width: 130,
                      height: 31,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(37, 171, 58, 1),
                      )
                  )
              ),

              Positioned(
                  top: 490,
                  left: 95,
                  child: Text('SE CONNECTER', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      decoration: TextDecoration.none,

                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 300,
                  left: 3,
                  child: Text('Mot de passe', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 180,
                  left: 3,
                  child: Text('Adresse mail', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 280,
                  left: 3,
                  child: Text('Mot de passe', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 428,
                  left: 707,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 354,
                  left: 707,
                  child: Transform.rotate(
                    angle: -0.4121927682739988 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(48, 46, 99, 1),
                        thickness: 4
                    )
                    ,
                  )
              ),Positioned(
                  top: 163,
                  left: 3,
                  child: Text('Adresse mail', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
              Positioned(
                  top: 205,
                  left: 5,
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 310,
                    lineThickness: 2.0,
                    dashLength: 4.0,
                    dashColor: Color.fromRGBO(48, 46, 99, 1),
                    dashGapLength: 4.0,
                  )


              ),
              Positioned(
                  top: 325,
                  left: 5,
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 310,
                    lineThickness: 2.0,
                    dashLength: 4.0,
                    dashColor: Color.fromRGBO(48, 46, 99, 1),
                    dashGapLength: 4.0,
                  )


              ),
              /*
              Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                      'assets/images/rectangle11.svg',
                      semanticsLabel: 'rectangle11'
                  );
              ),
              */

            ]
        )
    );
  }
}
