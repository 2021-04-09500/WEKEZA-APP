import 'package:flutter/material.dart';

class SellShares extends StatefulWidget {
  const SellShares({super.key});

  @override
  State<SellShares> createState() => _SellSharesState();
}

class _SellSharesState extends State<SellShares> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: 360,
              height: 800,
              decoration: const BoxDecoration(color: Color(0xFF001F3F)),
              child: Stack(
                children: [
                  Positioned(
                    left: 11,
                    top: 41,
                    child: SizedBox(
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
                                color: const Color(0xFF0061F4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
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
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 44,
                                ),
                                onPressed: () {
                                  // Code to go back to the previous page
                                },
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4,
                    top: 451,
                    child: Container(
                      width: 360,
                      height: 348,
                      decoration: const ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.41, -0.91),
                          end: Alignment(-0.41, 0.91),
                          colors: [Color(0xFF0061F4), Color(0xFF002968)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
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
                  const Positioned(
                    left: 32,
                    top: 488,
                    child: Text(
                      'SELL',
                      style: TextStyle(
                        color: Color(0xFFF4F9FF),
                        fontSize: 28,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 46,
                    top: 553,
                    child: SizedBox(
                      width: 267.79,
                      height: 151,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Shares:           ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 68,
                            child: Text(
                              'Price:           ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 122,
                            child: Text(
                              'Broker fee',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 170,
                            top: 68,
                            child: Text(
                              '45,678',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 169,
                            top: 122,
                            child: Text(
                              '5000',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 244,
                            top: 3,
                            child: SizedBox(
                              width: 23.79,
                              height: 23.79,
                              child: Stack(children: []),
                            ),
                          ),
                          Positioned(
                            left: 123,
                            top: 3,
                            child: SizedBox(
                              width: 23.79,
                              height: 23.79,
                              child: Stack(children: []),
                            ),
                          ),
                          Positioned(
                            left: 175,
                            top: 0,
                            child: Text(
                              '100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 217,
                    top: 718,
                    child: SizedBox(
                      width: 120,
                      height: 45,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 120,
                              height: 45,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF001F3F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
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
                          Positioned(
                            left: 45,
                            top: 13,
                            child: TextButton(
                              onPressed: () {
                                //page to be displayed next when the button is clicked.
                              },
                              child: const SizedBox(
                                width: 29.45,
                                child: Text(
                                  'Sell ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Karla',
                                    fontWeight: FontWeight.w300,
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
                    left: 11,
                    top: 91,
                    child: Opacity(
                      opacity: 0.40,
                      child: SizedBox(
                        width: 335,
                        height: 360,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 17,
                              top: 0,
                              child: Text(
                                'CRDB PLC',
                                style: TextStyle(
                                  color: Color(0xFFF4F9FF),
                                  fontSize: 40,
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 31,
                              top: 67,
                              child: SizedBox(
                                width: 275.20,
                                height: 42,
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
                                                  color:
                                                      const Color(0xFF00FF32),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
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
                              left: 0,
                              top: 130,
                              child: SizedBox(
                                width: 335,
                                height: 230,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      left: 11,
                                      top: 216,
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
                                    const Positioned(
                                      left: 55,
                                      top: 216,
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
                                    const Positioned(
                                      left: 239,
                                      top: 216,
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
                                    const Positioned(
                                      left: 282,
                                      top: 216,
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
                                      left: 13,
                                      top: 60,
                                      child: SizedBox(
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                  decoration:
                                                      const ShapeDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                          0.00, -1.00),
                                                      end: Alignment(0, 1),
                                                      colors: [
                                                        Color(0xFF0074F8),
                                                        Color(0x00D9D9D9)
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(10),
                                                        topRight:
                                                            Radius.circular(10),
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                decoration:
                                                    const ShapeDecoration(
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.00, -1.00),
                                                    end: Alignment(0, 1),
                                                    colors: [
                                                      Color(0xFF0074F8),
                                                      Color(0x00D9D9D9)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                      left: 4,
                                      top: 0,
                                      child: SizedBox(
                                        width: 308,
                                        height: 35,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: SizedBox(
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
                                                        decoration:
                                                            ShapeDecoration(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: const BorderSide(
                                                                width: 0.50,
                                                                color: Color(
                                                                    0xFFF4F9FF)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 15,
                                                      top: 6,
                                                      child: Text(
                                                        '1D',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
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
                                              child: SizedBox(
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
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: const Color(
                                                              0xFFD9D9D9),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: const BorderSide(
                                                                width: 0.50,
                                                                color: Color(
                                                                    0xFFF4F9FF)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 12,
                                                      top: 6,
                                                      child: Text(
                                                        '1W',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF001F3F),
                                                          fontSize: 20,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
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
                                              child: SizedBox(
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
                                                        decoration:
                                                            ShapeDecoration(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: const BorderSide(
                                                                width: 0.50,
                                                                color: Color(
                                                                    0xFFF4F9FF)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 12,
                                                      top: 6,
                                                      child: Text(
                                                        '1M',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
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
                                              child: SizedBox(
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
                                                        decoration:
                                                            ShapeDecoration(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: const BorderSide(
                                                                width: 0.50,
                                                                color: Color(
                                                                    0xFFF4F9FF)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 15,
                                                      top: 6,
                                                      child: Text(
                                                        '1Y',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
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
                                    const Positioned(
                                      left: 101,
                                      top: 216,
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
                                    const Positioned(
                                      left: 142,
                                      top: 216,
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
                                    const Positioned(
                                      left: 196,
                                      top: 216,
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
                                      left: 0,
                                      top: 49,
                                      child: SizedBox(
                                        width: 334,
                                        height: 12,
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
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.10000000149011612),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
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
                                      left: 1,
                                      top: 124,
                                      child: SizedBox(
                                        width: 334,
                                        height: 12,
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
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.10000000149011612),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
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
                                      left: 0,
                                      top: 198,
                                      child: SizedBox(
                                        width: 331,
                                        height: 12,
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
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.10000000149011612),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
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
                                      left: 0,
                                      top: 162,
                                      child: SizedBox(
                                        width: 334,
                                        height: 12,
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
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.10000000149011612),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
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
                                      left: 0,
                                      top: 87,
                                      child: SizedBox(
                                        width: 333,
                                        height: 12,
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
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.10000000149011612),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 360,
                      height: 32,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
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
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF001F3F)),
                                ),
                              ],
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
        ),
      ),
    );
  }
}