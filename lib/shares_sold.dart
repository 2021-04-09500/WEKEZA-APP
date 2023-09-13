import 'package:flutter/material.dart';

class SharesSold extends StatelessWidget {
  const SharesSold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF001F3F),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 5.0),
                    child: Text("CONGRATS",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Jura',
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                  ),
                  //const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: Stack(
                      children: <Widget>[
                        // Background Container
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 513,
                            width: 380,
                            //MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                              color: Color(0xFF00B023),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 80),
                                Text(
                                  'ACTION COMPLETED',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 60),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                SizedBox(height: 50),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    'You have successfully placed 1500 MCB\nBank shares in the stock market You\'ll\nbe notified as soon as it is sold',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 60),
                                Row(children: [
                                  SizedBox(width: 220),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(
                                      //  context, '/fourth-page');
                                    },
                                    child: Text('Done'),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          103, 50), //Set the size of the butt
                                      primary: Color(0xFF001F3F),
                                      onPrimary: Color(0xFFF4F9FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15), // Set border radius
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
