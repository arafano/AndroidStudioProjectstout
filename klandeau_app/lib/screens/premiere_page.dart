import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:dotted_line/dotted_line.dart';
import 'package:hexcolor/hexcolor.dart';

class HorizontalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group1Widget - GROUP
    return Container(
        decoration: const BoxDecoration(color: Color(0xff302e63)),

        width: 294,
        height: 512,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 66,
                  left: 38,
                  child: Container(
                      width: 80,
                      height: 38,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/imagescovoit.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ), Positioned(
                  top: 183,
                  left: 0,
                  child: Container(
                      width: 340,
                      height: 350,
                      decoration: BoxDecoration(
                        //color : Color.fromRGBO(20, 40, 10, 14),
                          color: Color(0xff060000)
                      )
                  )
              ),
              /*
              Positioned(
                  top: 186,
                  left: 5,
                  child: Transform.rotate(
                    angle: -0.6389598757840809 * (math.pi / 180),
                    child: DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: Colors.black,
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  )

               */
              Positioned(
                  top: 337,
                  left: 0,
                  child: Divider(
                      color: Color.fromRGBO(78, 20, 70, 49),
                      thickness: 4
                  )

              ), Positioned(
                  top: 190,
                  left: 14,
                  child: Text('Lieu de départ', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(240, 3, 3, 1),
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                        height: 1
                    ),)
              ), Positioned(
                  top: 214,
                  left: 14,
                  child: Text('Rennes, France', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(241, 228, 228, 1),
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                        height: 1
                    ),)
              ), Positioned(
                  top: 273,
                  left: 14,
                  child: Text('Lieu d’arrivée', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(240, 3, 3, 1),
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,

                        height: 1
                    ),)
              ), Positioned(
                  top: 300,
                  left: 14,
                  child: Text('Nantes, France', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(241, 228, 228, 1),
                        fontFamily: 'Roboto',
                        decoration: TextDecoration.none,

                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
              ), Positioned(
                  top: 341,
                  left: 14,
                  child: Text(
                    'Date', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(240, 3, 3, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      decoration: TextDecoration.none,

                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ), Positioned(
                  top: 361,
                  left: 12,
                  child: Text(
                    '13/10', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ), Positioned(
                  top: 361,
                  left: 180,
                  child: Text('Trajet  régulier', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(241, 228, 228, 1),
                        fontFamily: 'Roboto',
                        decoration: TextDecoration.none,

                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
              ), Positioned(
                  top: 146,
                  left: 94,
                  child: Container(
                      width: 144,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(36, 170, 58, 1),
                      )
                  )
              ), Positioned(
                  top: 412,
                  left: 50,
                  child: Container(
                      width: 229,
                      height: 19,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(37, 171, 58, 1),
                      )
                  )
              ), Positioned(
                  top: 414,
                  left: 60,
                  child: Text(
                    'RECHERCHER UN COVOITURAGE', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
              ), Positioned(
                  top: 444,
                  left: 50,
                  child: Container(
                      width: 229,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(176, 192, 81, 1),
                      )
                  )
              ), Positioned(
                  top: 448,
                  left: 85,
                  child: Text('METTRE UNE ANNONCE', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,

                        height: 1
                    ),)
              ), Positioned(
                  top: 475,
                  left: 50,
                  child: Container(
                      width: 229,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                      )
                  )
              ), Positioned(
                  top: 477,
                  left: 90,
                  child: Text('PARTIR MAINTENANT', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,

                        height: 1
                    ),)
              ), Positioned(
                  top: 120,
                  left: 94, //bouton connexion
                  child: Container(
                      width: 144,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                      )
                  )
              ), Positioned(
                  top: 365,
                  left: 150, //bouton trajet regulier
                  child: Container(
                      width: 18,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                      )
                  )
              ), Positioned(
                //top: 369,
                //left: 120,
                //child: SvgPicture.asset(
                //'assets/images/vector5.svg',
                //semanticsLabel: 'vector5'

                //child: DottedLine(
                //dashColor: Colors.pink,
                //lineThickness: 16,
                //dashLength:	4.0,
                  top: 366,
                  left: 153,
                  child: Container(
                      width: 12,
                      height: 9,
                      decoration: BoxDecoration(
                          color: Color(0xffbb0b0b)
                      )
                  )

              ), Positioned(
                  top: 124,
                  left: 120,
                  child: Text(
                    'CONNEXION', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      decoration: TextDecoration.none,

                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ), Positioned(
                  top: 150,
                  left: 125,
                  child: Text(
                    'INSCRIPTION', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      decoration: TextDecoration.none,

                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)),

              Positioned(
                  top: 236,
                  left: 15,
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 300,
                    lineThickness: 2.0,
                    dashLength: 4.0,
                    dashColor: Color.fromRGBO(48, 46, 99, 1),
                    dashGapLength: 4.0,
                  )


              ),

              Positioned(
                  top: 323,
                  left: 15,
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 300,
                    lineThickness: 2.0,
                    dashLength: 4.0,
                    dashColor: Color.fromRGBO(48, 46, 99, 1),
                    dashGapLength: 4.0,
                  )


              ),

              Positioned(
                  top: 30,
                  left: 35,
                  child: Text(
                    'Klandeau', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(217, 233, 31, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 26,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
            ]
        )
    );
  }
}

