import 'dart:convert';

import 'package:first_flutter_application/auto_invest_page.dart';
import 'package:first_flutter_application/order_shares.dart';
//import 'package:first_flutter_application/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserPage extends StatefulWidget {
  const UserPage({super.key, this.user});

  final user;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List portfolioData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPortfolioData();
  }

  Future<void> fetchPortfolioData() async {
    final apiUrl =
        Uri.parse('http://localhost:5003/portfolio/${widget.user["id"]}');
    try {
      final response = await http.get(apiUrl);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("Portfolio:$responseData");
        setState(() {
          portfolioData = responseData['data'];
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        // Handle error cases here
        print(
            'Failed to fetch portfolio data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      // Handle network errors or other exceptions here
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Name is ${widget.user['name']}");
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xFF001F3F),
        padding: EdgeInsets.all(16.0),
        child: isLoading ?  Center(child: CircularProgressIndicator(),) : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
                height: 2,
              ),
            ),
            Text(
              widget.user['name'],
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 30.0,
                height: 2,
              ),
            ),
            SizedBox(height: 12.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), // Rounded corners
                color: Color(0xFF0075F9),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Color(0XFFF4F9FF),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Market',
                      style: TextStyle(
                        color: Color(0XFFF4F9FF),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Color(0XFFF4F9FF),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), // Rounded corners
                color: Color(0xFF0075F9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 20.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    '11,936,100 Tsh',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 32.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Monthly Profit',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 20.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2,675,000 Tsh',
                        style: TextStyle(
                          color: Color(0XFFF4F9FF),
                          fontSize: 26.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyInvest()));
                        },
                        child: Text('Auto Invest'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF001F3F),
                          onPrimary: Color(0XFFF4F9FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'My Portfolio',
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 18.0,
                fontFamily: 'Jura',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0),
              height: 180.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: portfolioData.length,
                itemBuilder: (context, index) {
                  //profit calc
                  var profit = portfolioData[index]["earnings_per_share"] * portfolioData[index]["shares_owned"];
                  return Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF0075F9),
                    ),
                    padding: EdgeInsets.all(28.0),
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/logooz.png'),
                            ),
                            Text(
                              portfolioData[index]['company'],
                              style: TextStyle(
                                color: Color(0XFFF4F9FF),
                                fontSize: 20.0,
                                fontFamily: 'Jura',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(children: [
                              SizedBox(height: 6),
                              Text(
                                'Profit',
                                style: TextStyle(
                                  color: Color(0XFFF4F9FF),
                                  fontSize: 16.0,
                                  fontFamily: 'Jura',
                                ),
                              ),
                              Text(
                                "${profit.toString()} Tsh",
                                style: TextStyle(
                                  color: Color(0XFFF4F9FF),
                                  fontSize: 16.0,
                                  fontFamily: 'Jura',
                                ),
                              ),
                              Text(
                                '0.73%',
                                style: TextStyle(
                                  color: Color(0XFFF4F9FF),
                                  fontSize: 20.0,
                                  fontFamily: 'Jura',
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 0.1),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              child: Container(
                width: 150, // Set the width as needed
                child: ElevatedButton(
                  onPressed: () {
                    //Temporary to view Transactions
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Graphs()));
                  },
                  child: Text('View details'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0075F9),
                    onPrimary: Color(0XFFF4F9FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ) 
      ),
    );
  }
}
