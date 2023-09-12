<<<<<<< Updated upstream
=======
import 'package:first_flutter_application/portfolio_page.dart';
>>>>>>> Stashed changes
// ignore_for_file: library_private_types_in_public_api, avoid_print, avoid_unnecessary_containers, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:first_flutter_application/user_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: RegistrationPage(),
      initialRoute: '/',
    ); //MaterialApp
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // ignore: unused_field
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _cdsAccountController = TextEditingController();
  final _crdbAccountController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  //Future<void> _register() async {}
  Future<bool> _register() async {
    var isRegistred = false;

    final url = Uri.parse('http://localhost:5000/register');

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "name": _fullNameController.text.trim(),
        "cds_account": _cdsAccountController.text.trim(),
        "email": _emailController.text.trim(),
        "crdb_account": _crdbAccountController.text.trim(),
        "password": _passwordController.text.trim(),
        "phone": _phoneController.text.trim()
      }),
    );

    if (response.statusCode == 200) {
      // Request was successful
      print('Response data: ${response.body}');
      isRegistred = true;
    } else {
      // Request failed
      print('Failed to send POST request. Status code: ${response.statusCode}');
      print('Response data: ${response.body}');
    }

    return isRegistred;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 31, 63),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    height: 7,
                    color: Color(0XFFF4F9FF),
                    fontFamily: 'Karla',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Full Name:',
                  style: TextStyle(
                    height: 0.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                  controller: _fullNameController,
                  label: 'Full Name',
                  hint: 'Enter your full name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      debugPrint("Full Name error");
                      return 'Please enter your full name';
                    }
                    // You can add additional validation rules for names if needed
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ]),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'E-mail:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                controller: _emailController,
                label: 'E-mail',
                hint: 'Enter your email address',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    debugPrint("Full Name error");
                    return 'Please enter your email address';
                  }
                  final emailPattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                  final regex = RegExp(emailPattern);
                  if (!regex.hasMatch(value)) {
                    debugPrint("email error");
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(
                      r'[a-zA-Z@.]')), // Allow only letters, '@', and '.'
                ],
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'Phone no:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),

              CircleInputField(
                controller: _phoneController,
                label: 'Phone Number',
                hint: 'Enter your phone number',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    debugPrint("Phone number error");
                    return 'Please enter your phone number';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid phone number';
                  }
                  // You can add additional validation rules for phone numbers if needed
                  return null;
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'CDS Account:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                controller: _cdsAccountController,
                label: 'CDS Account',
                hint: 'Enter your CRDB account number',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    debugPrint("CDS Account error");
                    return 'Please enter your CDS account number';
                  }
                  // You can add additional validation rules for account numbers if needed
                  return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ], // Allow only digits
              ),
              //const SizedBox(height: 3),
              TextButton(
                onPressed: () {
                  // Handle "Don't have CDS account?" click here
                },
                child: const Text(
                  "Don't have CDS account? Click here",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'CRDB account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                controller: _crdbAccountController,
                label: 'CRDB Account',
                hint: 'Enter your CRDB account number',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    debugPrint("acoount not validated");
                    return 'Please enter your CRDB account number';
                  }
                  // You can add additional validation rules for account numbers if needed
                  return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ], // Allow only digits
              ),
              //const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'Create password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                controller: _passwordController,
                label: 'Create Password',
                hint: 'Enter your password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  if (!value.contains(RegExp(r'[A-Z]'))) {
                    return 'Password must contain at least one uppercase letter';
                  }
                  if (!value.contains(RegExp(r'[a-z]'))) {
                    return 'Password must contain at least one lowercase letter';
                  }
                  if (!value.contains(RegExp(r'[0-9]'))) {
                    return 'Password must contain at least one number';
                  }
                  if (!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                    return 'Password must contain at least one special character';
                  }

                  return null;
                },
                isPassword: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  'Confirm Password:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              CircleInputField(
                controller: _confirmPasswordController,
                label: 'Confirm Password',
                hint: 'Confirm your password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                isPassword: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0),
<<<<<<< Updated upstream
                
=======
>>>>>>> Stashed changes
                child: ElevatedButton(
                  onPressed: () async {
                    final isRegistered = await _register();
                    if (isRegistered) {
                      if (context.mounted) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserPage()));
                      }
                    } else {
                      print("Failed to register");
                    }
                  },
                  child: const Text('REGISTER'),
                ),
              ),
              const SizedBox(height: 2),
              TextButton(
                onPressed: () {
                  // Handle "Already have an account? Login" click here
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;

  const CircleInputField({
    super.key,
    required this.controller,
    this.isPassword = false,
    required String hint,
    required String label,
    required String? Function(dynamic value) validator,
    required List<TextInputFormatter> inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250.0,
      decoration: BoxDecoration(
        color: const Color(0XFFF4F9FF), // White background color inside the box
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        obscureText: isPassword,
        style: const TextStyle(color: Colors.black), // Input text color
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter this field';
          }
          return null;
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
