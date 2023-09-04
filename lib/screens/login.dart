import 'package:flutter/material.dart';

import './link.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: LoginPage(),
      initialRoute: '/',
      // routes: {
      //'/': (context) => MyPortfolio(), // Default route
      // '/page1': (context) => MyInvest(),
      // '/page2': (context) => MyPortfolio(), // Add other pages as needed
      //},
    ); //MaterialApp
  }
}

class LoginPage extends StatelessWidget {
  Future<void> _signInWithGoogle() async {
    // Implement Google Sign-In logic here
  }

  Future<void> _signInWithFacebook() async {
    // Implement Facebook Sign-In logic here
  }

  Future<void> _signInWithApple() async {
    // Implement Apple Sign-In logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('LOGIN'),
      //),
      body: Container(
        color: Color(0xFF001F3F),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 50),
                  Text('LOGIN',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xFFD9D9D9),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 40),
                  Text('E-Mail',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD9D9D9),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w300)),
                  Container(
                    width: 300,
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style:
                            TextStyle(color: Color(0xFF000000), fontSize: 18.0),
                        decoration: InputDecoration(
                          //labelText: 'Enter amount',
                          //labelStyle: TextStyle(
                          // color: Colors
                          // .blue), // Set label (hint) text color
                          fillColor: Color(0xFFD9D9D9)
                              .withOpacity(0.9), // Set background color
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
                        maxLines: 1,
                        minLines: 1),
                  ),
                  SizedBox(height: 16),
                  Text('Password',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFD9D9D9),
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w300)),
                  Container(
                    width: 300,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        //labelText: 'Enter amount',
                        //labelStyle: TextStyle(
                        // color: Colors
                        // .blue), // Set label (hint) text color
                        fillColor: Color(0xFFD9D9D9)
                            .withOpacity(0.9), // Set background color
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
                      maxLines: 1,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 25),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/third-page');
                      },
                      child: Text(
                        'LOG-IN',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFD9D9D9),
                            fontWeight: FontWeight.w300),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(170, 50), // Set the size of the button

                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Set border radius
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD9D9D9),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 20),
                  //Text('Forgot password?'),
                  //Text('Do not have an account yet? Register'),

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          TextButton(
                            onPressed: _signInWithGoogle,
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              Image.asset('assets/images/download.png',
                                  height: 40.0),
                            ]),
                          ),
                          SizedBox(width: 30),
                          TextButton(
                            onPressed: _signInWithGoogle,
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              Image.asset('assets/images/facebook.jpg',
                                  height: 40.0),
                            ]),
                          ),
                          SizedBox(width: 30),
                          TextButton(
                            onPressed: _signInWithGoogle,
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              Image.asset('assets/images/apple.png',
                                  height: 40.0),
                            ]),
                          ),
                        ])
                      ]),
                  SizedBox(height: 20),

                  // GestureDetector(
                  // onTap: () {
                  // Handle link click here
                  // print('Link clicked!');
                  // },
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      // 'Forgot password?',
                      //// style: TextStyle(

                      // ),
                      // ),
                      HoverLink(
                        text: 'Forgot password',
                        defaultStyle: TextStyle(
                            fontSize: 16.0, // Set the font size here
                            color: Color(0xFFF4F9FF),
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w300),
                        hoverStyle: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                        ),
                        onTap: () {
                          // Handle link click action here
                          // You can navigate to a URL or perform any other action.
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  GestureDetector(
                    onTap: () {
                      // Handle link click here
                      print('Link clicked!');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Do not have an account? Register',
                          style: TextStyle(
                            fontSize: 16.0, // Set the font size here
                            color: Color(0xFFF4F9FF),
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
        ),
      ),
    );
  }
}
