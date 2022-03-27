import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';



class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group2Widget - GROUP
    return Container(
        decoration: const BoxDecoration(color: Color(0xff302e63)),

        width: 455,
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
                        color : Color.fromRGBO(134, 98, 43, 1),
                      )
                  )
              ),Positioned(
                  top: 40,
                  left: 70,
                  child: Text('Inscription', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      decoration: TextDecoration.none,

                      fontFamily: 'Red Rose',
                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 278,
                  left: 179,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 344,
                  left: 179,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 412,
                  left: 179,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 482,
                  left: 179,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 551,
                  left: 179,
                  child: Divider(
                      color: Color.fromRGBO(48, 46, 99, 1),
                      thickness: 4
                  )

              ),Positioned(
                  top: 100,
                  left: 3,
                  child: Text('Prénom', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      decoration: TextDecoration.none,

                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 180,
                  left: 3,
                  child: Text('Nom', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 267,
                  left: 3,
                  child: Text('Email', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 354,
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
                  top: 439,
                  left: 3,
                  child: Text('Confirmer le mot de passe', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(241, 228, 228, 1),
                      fontFamily: 'Red Rose',
                      decoration: TextDecoration.none,

                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 119,
                  left: 3,
                  child: Text('Prénom', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),

                      decoration: TextDecoration.none,

                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 200,
                  left: 3,
                  child: Text('Nom', textAlign: TextAlign.left, style: TextStyle(
                      decoration: TextDecoration.none,

                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 289,
                  left: 3,
                  child: Text('Email', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      decoration: TextDecoration.none,

                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 375,
                  left: 3,
                  child: Text('Mot de passe', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      decoration: TextDecoration.none,

                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 458,
                  left: 3,
                  child: Text('Confirmer le mot de passe', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,

                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
              Positioned(
                  top: 511,
                  left: 219,
                  child: Container(
                      width: 100,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(37, 171, 58, 1),
                      )
                  )
              ),

              Positioned(
                  top: 510,
                  left: 240,
                  child: Text('SUIVANT', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Red Rose',
                      fontSize: 14,
                      decoration: TextDecoration.none,

                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),
              Positioned(
                  top: 315,
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
                  top: 225,
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
                  top: 145,
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
                  top: 400,
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
                  top: 484,
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
                      'assets/images/rectangle12.svg',
                      semanticsLabel: 'rectangle12'
                  );
              ),
              */

            ]
        )
    );
  }
}
