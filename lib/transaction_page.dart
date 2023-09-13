import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => TransactionPageState();
}

class TransactionPageState extends State<TransactionPage> {
  String amount = ''; // Store the entered amount

  // Function to handle button press
  void onButtonPressed(String value) {
    setState(() {
      if (value == ' ←') {
        // Handle backspace
        if (amount.isNotEmpty) {
          amount = amount.substring(0, amount.length - 1);
        }
      } else {
        // Append the value to the amount
        amount += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF001F3F),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 40,
                  decoration: BoxDecoration(
                    color:  Color(0xFF0075F9),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color:   Color(0XFFF4F9FF),
                  ),
                ),
                SizedBox(width: 15, height: 50),
                const Text(
                  'INVEST',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Karla',
                    color:  Color(0XFFF4F9FF),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Center( // Center "CRDB BANK" text and its icon
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logooz.png',
                    width: 65,
                    height: 65,
                  ),
                  SizedBox(width: 10), // Add some spacing between the icon and text
                  Text(
                    'CRDB BANK',
                    style: TextStyle(color:  Color(0XFFF4F9FF), fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Amount',
              style: TextStyle(color:  Color(0XFFF4F9FF)),
            ),
            SizedBox(height: 10),
            Container(
              width: 290,
              decoration: BoxDecoration(
                color:  Color(0XFFF4F9FF),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.start,
                maxLines: 1,
                readOnly: true, // Make the text field read-only
                controller: TextEditingController(text: amount), // Set the text controller
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor:  Color(0XFFF4F9FF),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF0075F9),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String buttonValue in ['1', '2', '3'])
                      NumberButton(
                        buttonValue,
                        onTap: () => onButtonPressed(buttonValue),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String buttonValue in ['4', '5', '6'])
                      NumberButton(
                        buttonValue,
                        onTap: () => onButtonPressed(buttonValue),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String buttonValue in ['7', '8', '9'])
                      NumberButton(
                        buttonValue,
                        onTap: () => onButtonPressed(buttonValue),
                      ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String buttonValue in ['.', '0', ' ←'])
                      NumberButton(
                        buttonValue,
                        onTap: () => onButtonPressed(buttonValue),
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Center( // Center the "Order" container
              child: ElevatedButton(
                style: ElevatedButton.styleFrom( 
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15)
                ),
                onPressed: () {
                  // Add your order functionality here
                },
                child: const Text(
                  'Order',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Karla',
                    color:  Color(0XFFF4F9FF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String text;
  final Function onTap;

  NumberButton(this.text, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Color(0xFF0075F9),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Color(0XFFF4F9FF),),
          ),
        ),
      ),
    );
  }
}
 