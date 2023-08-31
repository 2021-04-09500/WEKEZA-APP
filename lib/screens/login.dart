import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'E-Mail',
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            Text(
              'Password',
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('LOG-IN'),
            ),
            SizedBox(height: 16),
            Text('Or continue with'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/google.png'), // Replace with actual asset
                      onPressed: () {},
                    ),
                    Text('Google'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/facebook.png'), // Replace with actual asset
                      onPressed: () {},
                    ),
                    Text('Facebook'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/apple.png'), // Replace with actual asset
                      onPressed: () {},
                    ),
                    Text('iOS'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Forgot password?'),
            Text('Do not have an account yet? Register'),
          ],
        ),
      ),
    );
  }
}