import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyBuying(),
    ); //MaterialApp
  }
}

class MyBuying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tab
        child: Scaffold(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TabBar(
                                tabs: [
                                  Tab(
                                      child: Text(
                                    'Home',
                                    style: TextStyle(
                                      fontSize: 16.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Jura',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )),
                                  Tab(
                                      child: Text(
                                    'Market',
                                    style: TextStyle(
                                      fontSize: 16.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Jura',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )),
                                  Tab(
                                      child: Text(
                                    'History',
                                    style: TextStyle(
                                      fontSize: 16.0, // Set the font size here
                                      color: Color(0xFFF4F9FF),
                                      fontFamily: 'Jura',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    // Content for Tab 1
                                    Center(
                                      child: Text('Tab 1 Content'),
                                    ),
                                    // Content for Tab 2
                                    Center(
                                      child: Text('Tab 2 Content'),
                                    ),
                                    // Content for Tab 3
                                    Center(
                                      child: Text('Tab 3 Content'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
