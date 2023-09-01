import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import './auto_invest_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyInvest(),
      initialRoute: '/',
      // routes: {
      //'/': (context) => MyPortfolio(), // Default route
      // '/page1': (context) => MyInvest(),
      // '/page2': (context) => MyPortfolio(), // Add other pages as needed
      //},
    ); //MaterialApp
  }
}

class MyInvest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF001F3F),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_back),
                          SizedBox(width: 8.0), // Space between icon and text
                          //Text('Back'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(50, 50), //Set the size of the butt
                        primary: Color(0xFF0062F4),
                        onPrimary: Color(0xFFF4F9FF),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Set border radius
                        ),
                      ),
                    ),
                  ),
                  // Your scrollable content
                  SizedBox(height: 25),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' Welcome to our\n Automated investment\n Advisor',
                                style: TextStyle(
                                  fontSize: 28.0, // Set the font size here
                                  color: Color(0xFFF4F9FF),
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                'How much do you want to invest',
                                style: TextStyle(
                                  fontSize: 20.0, // Set the font size here
                                  color: Color(0xFFF4F9FF),
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 20),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.all(5.0),
                                      // width: 300.0, // Adjust the width
                                      // color: Color(0xFFD9D9D9),

                                      child: TextFormField(
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 18.0),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          //labelText: 'Enter amount',
                                          //labelStyle: TextStyle(
                                          // color: Colors
                                          // .blue), // Set label (hint) text color
                                          fillColor: Color(0xFFD9D9D9)
                                              .withOpacity(
                                                  0.9), // Set background color
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                20.0), // Set circular radius
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(
                                                    0xFFD9D9D9)), // Set focused border color
                                          ),
                                        ),
                                      ),
                                    )
                                  ])
                            ])),
                  ),
                  SizedBox(height: 35),
                  Text(
                    '  Please choose your risk tolerance level',
                    style: TextStyle(
                      fontSize: 20.0, // Set the font size here
                      color: Color(0xFFF4F9FF),
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 11),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      // color: Color(0xFF0062F4),
                      width: 336,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(20), // Set border radius
                        border: Border.all(
                            color: Color(0xFFBF0000)), // Set border color
                        color: Color(0xFFBF0000),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 9),
                              Text(
                                'AGGRESSIVE',
                                style: TextStyle(
                                  fontSize: 20.0, // Set the font size here
                                  color: Color(0xFFF4F9FF),
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Text(
                                    'Willing to take a lot of risk to\nmaximize returns',
                                    style: TextStyle(
                                      fontSize: 15.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(context, '/page1');
                                    },
                                    child: Text(
                                      'Choose',
                                      style: TextStyle(
                                        fontSize:
                                            15.0, // Set the font size here
                                        //color: Color(0xFFF4F9FF),
                                        fontFamily: 'Karla',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          81, 31), //Set the size of the butt
                                      primary: Color(0xFFD9D9D9),
                                      onPrimary: Color(0xFF000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Set border radius
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      // color: Color(0xFF0062F4),
                      width: 336,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(20), // Set border radius
                        border: Border.all(
                            color: Color(0xFF2666FF)), // Set border color
                        color: Color(0xFF2666FF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 9),
                              Text(
                                'MODERATE',
                                style: TextStyle(
                                  fontSize: 20.0, // Set the font size here
                                  color: Color(0xFFF4F9FF),
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Text(
                                    'Willing to take some risk but\nuncomfortable with volatility',
                                    style: TextStyle(
                                      fontSize: 15.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(context, '/page1');
                                    },
                                    child: Text(
                                      'Choose',
                                      style: TextStyle(
                                        fontSize:
                                            15.0, // Set the font size here
                                        //color: Color(0xFFF4F9FF),
                                        fontFamily: 'Karla',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          81, 31), //Set the size of the butt
                                      primary: Color(0xFFD9D9D9),
                                      onPrimary: Color(0xFF000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Set border radius
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      // color: Color(0xFF0062F4),
                      width: 336,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(20), // Set border radius
                        border: Border.all(
                            color: Color(0xFF00B123)), // Set border color
                        color: Color(0xFF00B123),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 9),
                              Text(
                                'CONSERVATIVE',
                                style: TextStyle(
                                  fontSize: 20.0, // Set the font size here
                                  color: Color(0xFFF4F9FF),
                                  fontFamily: 'Karla',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Text(
                                    'Only necessary amount of risk\ntaken',
                                    style: TextStyle(
                                      fontSize: 15.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(width: 37),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(context, '/page1');
                                    },
                                    child: Text(
                                      'Choose',
                                      style: TextStyle(
                                        fontSize:
                                            15.0, // Set the font size here
                                        //color: Color(0xFFF4F9FF),
                                        fontFamily: 'Karla',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          81, 31), //Set the size of the butt
                                      primary: Color(0xFFD9D9D9),
                                      onPrimary: Color(0xFF000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Set border radius
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                ]),
          ),
        ),
      ),
    );
  }
}
