// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xFF001F3F),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 20.0,
                height: 5,
              ),
            ),
            Text(
              'Hassan Waziri',
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 30.0,
                height: 0.5,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
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
            SizedBox(height: 16.0),
            Container(
              width: 340,
              height: 150,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
                color: Color(0xFF0075F9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 9,),
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 15.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    '11,936,100 Tsh',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 18.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 9,),
                  Text(
                    'Monthly Profit',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 18.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    '2,675,000 Tsh',
                    style: TextStyle(
                      color: Color(0XFFF4F9FF),
                      fontSize: 18.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      border: Border.all(
                        color: Color(0XFFF4F9FF),
                      ),
                    ),
                    child: SizedBox(
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Auto Invest'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF001F3F),
                          onPrimary: Color(0XFFF4F9FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'My Portfolio',
              style: TextStyle(
                color: Color(0XFFF4F9FF),
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 800,
              margin: EdgeInsets.only(top: 16.0),
              height: 180.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Adjust the number of items as needed
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      color: Color(0xFF0075F9),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_balance,
                          color: Color(0XFFF4F9FF),
                          size: 48.0,
                        ),
                        Text(
                          'CRDB BANK',
                          style: TextStyle(
                            color: Color(0XFFF4F9FF),
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Profit',
                          style: TextStyle(
                            color: Color(0XFFF4F9FF),
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFFF4F9FF),
                            ),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '8,777,050',
                            style: TextStyle(
                              color: Color(0XFFF4F9FF),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Text(
                          '0.77%',
                          style: TextStyle(
                            color: Color(0XFFF4F9FF),
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                color: Color(0xFF0075F9),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'View details',
                style: TextStyle(
                  color: Color(0XFFF4F9FF),
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
