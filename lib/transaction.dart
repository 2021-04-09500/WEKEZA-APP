import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyDividend(),
      initialRoute: '/',
    ); //MaterialApp
  }
}

// ignore: must_be_immutable
class MyDividend extends StatelessWidget {
  final List<String> dataList = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    // Add more items as needed
  ];

  //bool alternateOrder = false;

  MyDividend({super.key});
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //const SizedBox(height: 60),
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
                            labelText: 'Search a Transaction',
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
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text("TRANSACTION",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Jura',
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, index) {
                            if (index % 2 == 0) {
                              // Arrange widgets in the default order
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
                                              'DIVIDENDS',
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
                                          '+1,652,000',
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
                            } else {
                              // Arrange widgets in reverse order
                              //int reversedIndex = 10 - 1 - index;
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/tra.jpg',
                                          height: 40.0, width: 50.0),
                                      const SizedBox(width: 30),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10),
                                          Text(
                                            'TRA',
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
                                              'INCOME TAX',
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
                                          '-1,652,000',
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
                            }
                          }),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
