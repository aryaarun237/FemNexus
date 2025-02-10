import 'package:flutter/material.dart';

class Health extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
          child: Stack(
            children: [
              Positioned(
                left: 39,
                top: 759,
                child: Container(
                  width: 35,
                  height: 36,
                  padding: const EdgeInsets.only(
                    top: 3,
                    left: 4.38,
                    right: 4.38,
                    bottom: 4.50,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 752,
                child: Container(
                  width: 375,
                  height: 59,
                  decoration: BoxDecoration(color: Color(0xFFC7AFC9)),
                ),
              ),
              Positioned(
                left: 129,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 223,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 787,
                child: Text(
                  'health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 787,
                child: Text(
                  'career',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 197,
                top: 787,
                child: Text(
                  'community',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 787,
                child: Text(
                  'SOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 62,
                child: SizedBox(
                  width: 301,
                  height: 24,
                  child: SizedBox(
                    width: 301,
                    height: 24,
                    child: Text(
                      'Your wellness matters. Stay informed, stay healthy!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 133,
                child: Container(
                  width: 312,
                  height: 141,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 18,
                top: 324,
                child: Container(
                  width: 152,
                  height: 146,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 197,
                top: 324,
                child: Container(
                  width: 152,
                  height: 146,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 197,
                top: 520,
                child: Container(
                  width: 152,
                  height: 146,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 222,
                top: 553,
                child: SizedBox(
                  width: 101,
                  height: 77,
                  child: SizedBox(
                    width: 101,
                    height: 77,
                    child: Text(
                      'Breast Cancer Awareness',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 520,
                child: Container(
                  width: 152,
                  height: 146,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 37,
                top: 560,
                child: SizedBox(
                  width: 114,
                  height: 76,
                  child: SizedBox(
                    width: 114,
                    height: 76,
                    child: Text(
                      'Hygiene & Self-Care',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 360,
                child: SizedBox(
                  width: 114,
                  height: 76,
                  child: SizedBox(
                    width: 114,
                    height: 76,
                    child: Text(
                      'PCOS & Menstrual Health',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 222,
                top: 357,
                child: SizedBox(
                  width: 101,
                  height: 77,
                  child: SizedBox(
                    width: 101,
                    height: 77,
                    child: Text(
                      'Breast Cancer Awareness',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
