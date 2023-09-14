import 'package:first_flutter_application/order_shares.dart';
import 'package:flutter/material.dart';
//fimport 'package:get/get_connect/http/src/exceptions/exceptions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyBuying(),
      initialRoute: '/',
    ); //MaterialApp
  }
}

class MyBuying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text("WEKEZA",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Jura',
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //padding: EdgeInsets.all(5.0),
                      width: 300.0, // Adjust the width
                      //color: Color(0xFFD9D9D9),
                      child: Center(
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color(0xFF000000), fontSize: 18.0),
                          // keyboardType: TextInputType.number,
                          //inputFormatters: [
                          // FilteringTextInputFormatter.digitsOnly
                          // ],
                          decoration: InputDecoration(
                            labelText: 'Search an Investment',
                            prefixIcon: const Icon(Icons.search),
                            labelStyle: const TextStyle(
                              // color: Colors
                              fontSize: 18.0, // Set the font size here
                              //color: Color(0xFFF4F9FF),
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.w300,
                            ), // Set label (hint) text color
                            fillColor: const Color(0xFFD9D9D9)
                                .withOpacity(0.9), // Set background color
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Set circular radius
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(
                                      0xFFD9D9D9)), // Set focused border color
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Trending Stocks',
                      style: TextStyle(
                        fontSize: 25.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    // Divider(),
                    const SizedBox(height: 3),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.39,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Graphs()));
                              // onPressed();
                            },
                            child: Container(
                              width: 350.0,
                              height: 77.0,
                              child: Card(
                                  //color: index % 2 == 0
                                  // ? Color(0xFF0062F4)
                                  // : Color(0xFFB362F4),
                                  // Set the background color of the card
                                  color: const Color(0xFF0062F4),
                                  margin: EdgeInsets.all(5.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0), // Set the border radius here
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Container(
                                          width: 53.0,
                                          height: 53.0,
                                          child: Card(
                                            color: const Color(0xFF00FF32),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Set the border radius here
                                            ),
                                            child: const Column(children: [
                                              Icon(
                                                Icons.arrow_upward,
                                                size: 30.0,
                                                color: Color(0xFFF4F9FF),
                                              ),
                                              Text(
                                                '2.68%',
                                                style: TextStyle(
                                                  fontSize:
                                                      12.0, // Set the font size here
                                                  color: Color(0xFFF4F9FF),
                                                  fontFamily: 'Karla',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ]),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10),
                                          Text(
                                            'CRDB BANK',
                                            style: TextStyle(
                                              fontSize:
                                                  18.0, // Set the font size here
                                              color: Color(0xFFF4F9FF),
                                              fontFamily: 'Karla',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 10),
                                            child: Text(
                                              '+12.596',
                                              style: TextStyle(
                                                fontSize:
                                                    13.0, // Set the font size here
                                                color: Color(0xFFF4F9FF),
                                                fontFamily: 'Karla',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 50),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 7.0, left: 10, right: 10),
                                        child: Text(
                                          '482.6 Tsh',
                                          style: TextStyle(
                                            fontSize:
                                                16.0, // Set the font size here
                                            color: Color(0xFFF4F9FF),
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),

                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                    // SizedBox(height: 5),
                    const Text(
                      'Gainers & Losers',
                      style: TextStyle(
                        fontSize: 25.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, index) {
                            if (index % 2 == 0) {
                              // Arrange widgets in the default order
                              return GestureDetector(
                                onTap: () {
                                  // onPressed();
                                },
                                child: Container(
                                  width: 124.0,
                                  height: 51.0,
                                  child: Card(
                                    color: Color(0xFF00FF32),

                                    // Set the background color of the card
                                    margin: const EdgeInsets.all(5.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Set the border radius here
                                    ),
                                    child: const Row(
                                        // mainAxisAlignment:
                                        // MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox(height: 10),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 1, right: 10),
                                            child: Text(
                                              'KCB BANK',
                                              style: TextStyle(
                                                fontSize:
                                                    13.0, // Set the font size here
                                                color: Color(0xFFF4F9FF),
                                                fontFamily: 'Jura',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          //SizedBox(width: 5),
                                          Column(children: [
                                            Icon(
                                              Icons.arrow_upward,
                                              size: 30.0,
                                              color: Color(0xFFF4F9FF),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '+2.68%',
                                              style: TextStyle(
                                                fontSize:
                                                    12.0, // Set the font size here
                                                color: Color(0xFFF4F9FF),
                                                fontFamily: 'Karla',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ]),
                                        ]),
                                  ),
                                ),
                              );
                            } else {
                              // Arrange widgets in reverse order
                              //int reversedIndex = 10 - 1 - index;
                              return GestureDetector(
                                onTap: () {
                                  // onPressed();
                                },
                                child: Container(
                                  width: 118.0,
                                  height: 51.0,
                                  child: Card(
                                    color: Color(0xFFFF0000),
                                    // Set the background color of the card
                                    margin: const EdgeInsets.all(5.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Set the border radius here
                                    ),
                                    child: const Row(
                                        // mainAxisAlignment:
                                        // MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox(height: 10),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 1, right: 10),
                                            child: Text(
                                              'TTCL',
                                              style: TextStyle(
                                                fontSize:
                                                    13.0, // Set the font size here
                                                color: Color(0xFFF4F9FF),
                                                fontFamily: 'Jura',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 25),
                                          Column(children: [
                                            Icon(
                                              Icons.arrow_downward,
                                              size: 30.0,
                                              color: Color(0xFFF4F9FF),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '-0.8%',
                                              style: TextStyle(
                                                fontSize:
                                                    12.0, // Set the font size here
                                                color: Color(0xFFF4F9FF),
                                                fontFamily: 'Karla',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ]),
                                        ]),
                                  ),
                                ),
                              );
                            }
                          }),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Movers',
                      style: TextStyle(
                        fontSize: 25.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      height: 1, // Height of the separation line
                      color: Colors.white, // Color of the separation line
                      child:
                          const Divider(), // Add a divider line inside the container
                    ),

                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.39,
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/crdb.jpg',
                                        height: 40.0),
                                    const SizedBox(width: 8),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'CRDB BANK',
                                          style: TextStyle(
                                            fontSize:
                                                18.0, // Set the font size here
                                            color: Color(0xFFF4F9FF),
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 5, right: 10),
                                          child: Text(
                                            '420Tsh',
                                            style: TextStyle(
                                              fontSize:
                                                  13.0, // Set the font size here
                                              color: Color(0xFFF4F9FF),
                                              fontFamily: 'Karla',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 50),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 7.0, left: 10, right: 10),
                                      child: Text(
                                        '820,179',
                                        style: TextStyle(
                                          fontSize:
                                              16.0, // Set the font size here
                                          color: Color(0xFFF4F9FF),
                                          fontFamily: 'Karla',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 1, // Height of the separation line
                                  color: Colors
                                      .white, // Color of the separation line
                                  child:
                                      const Divider(), // Add a divider line inside the container
                                ),
                                const SizedBox(height: 5),
                              ],
                            );
                          },
                          itemCount: 5,
                        )),
                    const SizedBox(height: 20),
                    const Text(
                      'News',
                      style: TextStyle(
                        fontSize: 25.0, // Set the font size here
                        color: Color(0xFFF4F9FF),
                        fontFamily: 'Jura',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      height: 1, // Height of the separation line
                      color: Colors.white, // Color of the separation line
                      child:
                          Divider(), // Add a divider line inside the container
                    ),

                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.39,
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/crdb.jpg',
                                        height: 40.0),
                                    const SizedBox(width: 8),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'CRDB announces shareholders\nconference in Arusha',
                                          style: TextStyle(
                                            fontSize:
                                                18.0, // Set the font size here
                                            color: Color(0xFFF4F9FF),
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 1, // Height of the separation line
                                  color: Colors
                                      .white, // Color of the separation line
                                  child:
                                      Divider(), // Add a divider line inside the container
                                ),
                                SizedBox(height: 5),
                              ],
                            );
                          },
                          itemCount: 7,
                        ))
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
