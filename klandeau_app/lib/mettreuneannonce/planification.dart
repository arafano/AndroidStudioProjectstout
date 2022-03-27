import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:dotted_line/dotted_line.dart';



class Plannification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group4Widget - GROUP
    return Container(
        decoration: const BoxDecoration(color: Color(0xff302e63)),

        width: 1344,
        height: 644,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 95,
                  left: 0,
                  child: Container(
                      width: 370,
                      height: 440,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(134, 98, 44, 1),
                      )
                  )
              ),

              Positioned(
                  top: 389,
                  left: 45,
                  child: Text('Date', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),

              Positioned(
                  top: 320,
                  left: 65,
                  child: Text('Retour', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 140,
                  left: 65,
                  child: Text('Aller', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),

              /*
              Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                      'assets/images/rectangle25.svg',
                      semanticsLabel: 'rectangle25'
                  );
              ),
              */
              Positioned(

                  top: 351,
                  left: 300,
                  child: Transform.rotate(
                    angle: 1.4033419209422001e-14 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        thickness: 4
                    )
                    ,
                  )
              ),Positioned(
                  top: 200,
                  left: 20,
                  child: Transform.rotate(
                    angle: 1.4033419209422001e-14 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        thickness: 4
                    )
                    ,
                  )
              ),Positioned(
                  top: 100,
                  left: 110,
                  child: Text('Planification', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 230,
                  left: 43,
                  child: Text('18/10/21', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 202,
                  left: 200,
                  child: Text('Heure', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 460,
                  left: 20,
                  child: Container(
                      width: 138,
                      height: 43,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(196, 196, 196, 1),
                        borderRadius : BorderRadius.all(Radius.elliptical(138, 43)),
                      )
                  )
              ),
              Positioned(
                  top: 473,
                  left: 37,
                  child: Text('PRECEDENT', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
              Positioned(
                  top: 460,
                  left: 180,
                  child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(37, 171, 58, 1),
                      )
                  )
              ),

              Positioned(
                  top: 471,
                  left: 203,
                  child: Text('SUIVANT', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 370,
                  left: 45,
                  child: Text('Date', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 463,
                  left: 325,
                  child: Text('Date', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 370,
                  left: 200,
                  child: Text('Heure', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 220,
                  left: 200,
                  child: Text('Heure', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 387,
                  left: 201,
                  child: Text('Heure', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 320,
                  left: 43,
                  child: Container(
                      width: 15,
                      height: 14,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(196, 196, 196, 1),
                      )
                  )
              ),Positioned(
                  top: 140,
                  left: 43,
                  child: Container(
                      width: 15,
                      height: 14,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(196, 196, 196, 1),
                      )
                  )
              ),
              Positioned(
                //top: 369,
                //left: 120,
                //child: SvgPicture.asset(
                //'assets/images/vector5.svg',
                //semanticsLabel: 'vector5'

                //child: DottedLine(
                //dashColor: Colors.pink,
                //lineThickness: 16,
                //dashLength:	4.0,
                  top: 142,
                  left: 44,
                  child: Container(
                      width: 12,
                      height: 9,
                      decoration: BoxDecoration(
                          color: Color(0xffbb0b0b)
                      )
                  )

              ),
              Positioned(
                //top: 369,
                //left: 120,
                //child: SvgPicture.asset(
                //'assets/images/vector5.svg',
                //semanticsLabel: 'vector5'

                //child: DottedLine(
                //dashColor: Colors.pink,
                //lineThickness: 16,
                //dashLength:	4.0,
                  top: 322,
                  left: 44,
                  child: Container(
                      width: 12,
                      height: 9,
                      decoration: BoxDecoration(
                          color: Color(0xffbb0b0b)
                      )
                  )

              ),
              Positioned(
                  top: 260,
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
                  top: 426,
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
                  top: 44,
                  left: 39,
                  child: Container(
                      width: 20,
                      height: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/fleche.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),

              Positioned(

                  top: 200,
                  left: 45,
                  child: Text('Date', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 50,
                  left: 80,
                  child: Text('Mettre  une annonce', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Rubik',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
              /*
              Positioned(
                  top: 140,
                  left: 357,
                  child: Transform.rotate(
                    angle: -180 * (math.pi / 180),
                    child: SvgPicture.asset(
                        'assets/images/arrow4.svg',
                        semanticsLabel: 'arrow4'
                    ),
                  )
              ),

               */
            ]
        )
    );
  }
}
