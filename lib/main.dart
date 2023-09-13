import 'package:flutter/material.dart';
import './login.dart';
import './portfolio_page.dart';
import './auto_invest_page.dart';
import './registration.dart';
import './buying_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        //'/': (context) => MyPortfolio(), // Default route
        '/page1': (context) => LoginPage(), // Add other pages as needed
        '/page2': (context) => RegistrationPage(),
        '/third-page': (context) => MyPortfolio(),
        '/fourth-page': (context) => MyInvest(),
        '/fifth-page': (context) => MyBuying(),
      },
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
                      child: const Padding(
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
                            child:  Text('LOGIN'),
                            onPressed: () {
                              Navigator.pushNamed(context, '/page1');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                 const Size(129, 62), // Set the size of the button
                            ),
                          ), //ElevatedButton
                         const SizedBox(width: 37),
                          ElevatedButton(
                            child: Text('SIGN UP'), //Text
                            onPressed: () {
                              Navigator.pushNamed(context, '/page2');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                const  Size(129, 62), // Set the size of the button
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
