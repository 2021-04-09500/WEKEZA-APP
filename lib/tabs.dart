import 'package:flutter/material.dart';
import './portfolio_page.dart';
import './buying_page.dart';
import './transaction.dart';
import './dividends.dart' as Dividend;

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({super.key});

  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Set the number of tabs
      child: Scaffold(
        backgroundColor: const Color(0xFF001F3F),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // Hide the default AppBar
          child: Container(),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            // Oval-shaped Tab Bar
            Container(
              width: 300,
              height: 40, // Adjust the height of the tab bar
              decoration: ShapeDecoration(
                shape: StadiumBorder(), // Oval shape
                color: Color(0xFF00162E), // Tab bar background color
              ),
              child: TabBar(
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
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Market',
                      style: TextStyle(
                        fontSize: 16.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'History',
                      style: TextStyle(
                        fontSize: 16.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      50), // Adjust the border radius to match the tab shape
                  color: Color(0xFF0062F4), // Tab indicator color
                ),
              ),
            ),

            // Content of the screen
            Expanded(
              child: Container(
                color: Color(0xFF00162E),
                child: TabBarView(
                  children: [
                    MyPortfolio(), // Use the content class from another file
                    MyBuying(), // You can have different content for each tab
                    const MyDividend(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
