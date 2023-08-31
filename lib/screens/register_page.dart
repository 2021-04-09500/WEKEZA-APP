import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //title: Text('Registration'),
      // ),
      body: Container(
        color: Color(0xFF001F3F),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FULL NAME:',
                  style: TextStyle(
                    color: Color(0xFFF4F9FF),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(15), // Set border radius
                    border: Border.all(color: Colors.grey), // Set border color
                  ),
                  width: 329,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16), // Adjust content padding
                      border: InputBorder.none, // Remove default border
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // ElevatedButton(
                //  onPressed: () {
                // Handle registration logic here
                // },
                // child: Text('Register'),
                // style: ElevatedButton.styleFrom(
                //minimumSize: Size(129, 62), // Set the size of the button
                // ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
