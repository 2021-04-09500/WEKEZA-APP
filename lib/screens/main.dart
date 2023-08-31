import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    ); //MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFF001F3F),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 100),
                            Text(
                              'WELCOME',
                              style: TextStyle(
                                fontSize: 40.0, // Set the font size here
                                color: Color(0xFFF4F9FF),
                                fontFamily: 'Khula',
                                fontWeight: FontWeight.w300,
                              ),
                            ), //Text

                            SizedBox(height: 45),
                            Text(
                                'Welcome to Wekeza App\n your closest Investment Partner',
                                style: TextStyle(
                                    fontSize: 20.0, // Set the font size here
                                    color: Color(0xFFF4F9FF),
                                    fontFamily: 'Khula',
                                    fontWeight: FontWeight.w300) //,TextStyle
                                ), //Text
                            SizedBox(height: 165),
                          ], //Children
                        ), //Column
                      ),
                    ), //Container
                    Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('LOGIN'),
                            onPressed: () {
                              print('User Logged In');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(129, 62), // Set the size of the button
                            ),
                          ), //ElevatedButton
                          SizedBox(width: 37),
                          ElevatedButton(
                            child: Text('SIGN UP'), //Text
                            onPressed: () {
                              print('User IS SIGNING UP');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(129, 62), // Set the size of the button
                            ),
                          ), //ElevatedButton
                        ])
                  ] //Widget
                  ), //Column
            ) //Center
            ) //Container
        ); //Scaffold
  }
}
