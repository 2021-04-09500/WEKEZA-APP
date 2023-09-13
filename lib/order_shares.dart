
import 'package:flutter/material.dart';


class Graphs extends StatelessWidget {
  const Graphs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          BuySharesPage(),
        ]),
      ),
    );
  }
}

class BuySharesPage extends StatelessWidget {
  const BuySharesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF001F3F)),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 535,
                child: Container(
                  width: 330,
                  height: 250,
                  decoration: ShapeDecoration(
                    color:  const Color(0xFF0061F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 30,
                top: 99,
                child: Text(
                  'CRDB BANK',
                  style: TextStyle(
                    color: Color(0xFFF4F9FF),
                    fontSize: 40,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 167,
                child: SizedBox(
                  height: 36,
                  width: 79.2,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          '482.6Tsh',
                          style: TextStyle(
                            color: Color(0xFFF4F9FF),
                            fontSize: 36,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 196,
                        top: 6,
                        child: SizedBox(
                          width: 79.20,
                          height: 36,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 79.20,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF00FF32),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 33.60,
                                top: 11.20,
                                child: SizedBox(
                                  width: 41.60,
                                  height: 15.12,
                                  child: Text(
                                    '2.68%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.40,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 330,
                child: Container(
                  width: 290,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 30,
                        child: Container(
                          width: 19.21,
                          height: 120,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 45.13,
                        top: -0,
                        child: Container(
                          width: 19.21,
                          height: 150,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 90.26,
                        top: 50,
                        child: Container(
                          width: 19.21,
                          height: 100,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 135.40,
                        top: 53,
                        child: Opacity(
                          opacity: 0.90,
                          child: Container(
                            width: 19.21,
                            height: 97,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180.53,
                        top: 32,
                        child: Container(
                          width: 19.21,
                          height: 118,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225.66,
                        top: 35,
                        child: Container(
                          width: 19.21,
                          height: 115,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270.79,
                        top: 9,
                        child: Container(
                          width: 19.21,
                          height: 141,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0074F8), Color(0x00D9D9D9)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 270,
                child: Container(
                  width: 308,
                  height: 35,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 55,
                          height: 35,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 0.50, color: Color(0xFFF4F9FF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 6,
                                child: Text(
                                  '1D',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 0,
                        child: Container(
                          width: 55,
                          height: 35,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 0.50, color: Color(0xFFF4F9FF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 6,
                                child: Text(
                                  '1W',
                                  style: TextStyle(
                                    color: Color(0xFF001F3F),
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 169,
                        top: 0,
                        child: Container(
                          width: 55,
                          height: 35,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 0.50, color: Color(0xFFF4F9FF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 6,
                                child: Text(
                                  '1M',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 253,
                        top: 0,
                        child: Container(
                          width: 55,
                          height: 35,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 0.50, color: Color(0xFFF4F9FF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 6,
                                child: Text(
                                  '1Y',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 41,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFF0061F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 552,
                child: Text(
                  'Price per share :        482.6 Tsh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 577,
                child: Text(
                  'Minimum share:       100',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 602,
                child: Text(
                  'Previous close:           460Tsh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 627,
                child: Text(
                  'Annual range:             446 - 497 Tsh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 652,
                child: Text(
                  'Volume:                        515,758',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 486,
                child: Text(
                  'Mon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 74,
                top: 486,
                child: Text(
                  'Tues',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 486,
                child: Text(
                  'Wed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 168,
                top: 486,
                child: Text(
                  'Thurs',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 486,
                child: Text(
                  'Fri',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 265,
                top: 486,
                child: Text(
                  'Sat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 312,
                top: 486,
                child: Text(
                  'Sun',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 208,
                top: 710,
                child: Container(
                  width: 103,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 103,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFF001F3F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        top: 14,
                        child: TextButton(
                          child: const Text(
                            'Order',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                          ),
                          
                          onPressed: () {
                          
                          }
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 32,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        height: 32,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 360,
                              height: 32,
                              decoration: BoxDecoration(color: Color(0xFF001F3F)),
                            ),
                            Text(
                              '01:37',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 319,
                child: Container(
                  width: 334,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        child: Container(
                          width: 312,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white.withOpacity(0.10000000149011612),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 0,
                        child: Text(
                          '500',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 394,
                child: Container(
                  width: 334,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        child: Container(
                          width: 312,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white.withOpacity(0.10000000149011612),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 0,
                        child: Text(
                          '300',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 468,
                child: 
                 Container(
                  width: 331,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        child: Container(
                          width: 312,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white.withOpacity(0.10000000149011612),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 0,
                        child: Text(
                          '100',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 432,
                child: Container(
                  width: 334,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        child: Container(
                          width: 312,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white.withOpacity(0.10000000149011612),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 0,
                        child: Text(
                          '200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 357,
                child: Container(
                  width: 333,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        child: Container(
                          width: 312,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white.withOpacity(0.10000000149011612),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 0,
                        child: Text(
                          '400',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
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
