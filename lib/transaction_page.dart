import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => TransactionPageState();
}

class TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 31, 63),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'INVEST',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logooz.png',
                  width: 50,
                  height: 50,
                ),
                Text('CRDB BANK', style: TextStyle(color: Colors.white, fontSize: 32,), ),
              ],
            ),
            SizedBox(height: 20),
            Text('Amount', style: TextStyle(color: Colors.white),),
            SizedBox(height: 10),
            Container(
              width:320,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    NumberButton('1'),
                   // color:Color.white,
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('4'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('7'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('.', columnAlignment: CrossAxisAlignment.end),
                  ],
                ),
                Column(
                  children: [
                    NumberButton('2'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('5'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('8'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('0', columnAlignment: CrossAxisAlignment.end),
                  ],
                ),
                Column(
                  children: [
                    NumberButton('3'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('6'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    NumberButton('9'),
                    const SizedBox(
                      height: 19.0,
                    ),
                    NumberButton('⬅️',
                        columnAlignment: CrossAxisAlignment.center),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100)
              ),
              onPressed: () {
                // Add your order functionality here
              },
              child: const Text('Order'),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String text;
  final CrossAxisAlignment columnAlignment;

   NumberButton(this.text, {this.columnAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: Colors.lightBlue
          ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
