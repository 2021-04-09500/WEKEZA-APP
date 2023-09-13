// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:first_flutter_application/tabs/buying_page.dart';
import 'package:flutter/material.dart';
//import './auto_invest_page.dart';

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001F3F),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'WELCOME',
                            style: TextStyle(
                              fontSize: 20.0, // Set the font size here
                              color: Color(0xFFF4F9FF),
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Hassan Waziri',
                            style: TextStyle(
                              fontSize: 30.0, // Set the font size here
                              color: Color(0xFFF4F9FF),
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ))),
              Container(
                // color: Color(0xFF0062F4),
                width: 340,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Set border radius
                  border:
                      Border.all(color: Color(0xFF0062F4)), // Set border color
                  color: Color(0xFF0062F4),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9),
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 15.0, // Set the font size here
                          color: Color(0xFFF4F9FF),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        '11,936,100 Tsh',
                        style: TextStyle(
                          fontSize: 30.0, // Set the font size here
                          color: Color(0xFFF4F9FF),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Monthly Profit',
                        style: TextStyle(
                          fontSize: 15.0, // Set the font size here
                          color: Color(0xFFF4F9FF),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            '0 Tsh',
                            style: TextStyle(
                              fontSize: 30.0, // Set the font size here
                              color: Color(0xFFF4F9FF),
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 130),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/fourth-page');
                            },
                            child: Text('Auto Invest'),
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(111, 46), //Set the size of the butt
                              primary: Color(0xFF001F3F),
                              onPrimary: Color(0xFFF4F9FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Set border radius
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'My Portfolio',
                style: TextStyle(
                  fontSize: 25.0, // Set the font size here
                  color: Color(0xFFF4F9FF),
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 15),
              Container(
                // color: Color(0xFF0062F4),
                width: 210,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Set border radius
                  border: Border.all(
                    color: Color(0xFFF4F9FF),
                  ), // Set border color
                  color: Color(0xFF001F3F),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2),
                      Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          //color: Colors.blue,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFFF4F9FF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'You have no investment yet',
                            style: TextStyle(
                              fontSize: 14.0, // Set the font size here
                              color: Color(0xFFF4F9FF),
                              fontFamily: 'Jura',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => MyBuying()));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyBuying()));

                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50), //Set the size of the butt
                  primary: Color(0xFF0062F4),
                  onPrimary: Color(0xFFF4F9FF),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15), // Set border radius
                  ),
                ),
                child: const Text(
                  'Buy New',
                  style: TextStyle(
                    fontSize: 20.0, // Set the font size here
                    color: Color(0xFFF4F9FF),
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(height: 65),
              GestureDetector(
                onTap: () {
                  // Handle link click here
                  print('Link clicked!');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Need help?',
                      style: TextStyle(
                        fontSize: 16.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors
                            .white, // Optional: You can specify the underline color
                        decorationThickness: 2.0,
                      ),
                    ),
                    Text(
                      'Contact customer support',
                      style: TextStyle(
                        fontSize: 16.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors
                            .white, // Optional: You can specify the underline color
                        decorationThickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
