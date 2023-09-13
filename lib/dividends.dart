import 'package:flutter/material.dart';

class MyDividend extends StatelessWidget {
  const MyDividend({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                        context, ModalRoute.withName('/third-page'));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 8.0), // Space between icon and text
                      //Text('Back'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50), //Set the size of the butt
                    primary: Color(0xFF0062F4),
                    onPrimary: Color(0xFFF4F9FF),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5), // Set border radius
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text("DIVIDENDS",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
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
                            },
                            itemCount: 10,
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

