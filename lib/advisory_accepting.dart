import 'package:flutter/material.dart';


class Advisory extends StatefulWidget {
  const Advisory({super.key});

  @override
  State<Advisory> createState() => _AdvisoryState();
}

class _AdvisoryState extends State<Advisory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF001F3F),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //  const SizedBox(height: 20),
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
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 20.0),
                child: Text("Accepting the advisory means\nthat you are",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Karla',
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
                        height: 613,
                        width: 380,
                        //MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF0062F4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 80),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Selling',
                                style: TextStyle(
                                    fontFamily: 'karla',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1000 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '+482,600',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1500 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '+528,750',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Buying',
                                style: TextStyle(
                                    fontFamily: 'karla',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1000 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '-482,600',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1500 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '-528,750',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1000 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '-482,600',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    '1500 CRDB PLC shares',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '-528,750',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Total Revenue change',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 60),
                                Text(
                                  '-528,750',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Investment portfolio value',
                                    style: TextStyle(
                                        fontFamily: 'karla',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  '-528,750',
                                  style: TextStyle(
                                      fontFamily: 'karla',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 60),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.pushNamed(
                                        //  context, '/fourth-page');
                                      },
                                      child: Text('No thanks'),
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
                                  ),
                                  SizedBox(width: 100),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.pushNamed(
                                      //  context, '/fourth-page');
                                    },
                                    child: Text('Confirm'),
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
