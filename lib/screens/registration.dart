
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _cdsAccountController = TextEditingController();
  TextEditingController _crdbAccountController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      // Perform registration logic here
      // For example, you can send registration data to an API
      // and handle success/failure accordingly.
      // You can also navigate to the next screen after successful registration.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color.fromARGB(255, 0,35 , 102),

     body: SingleChildScrollView(
       child: Container(
          //color: Color.fromARGB(255, 5, 64, 112),
         child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    height: 7,
                    color: Colors.white,
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
                      height:0.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                CircleInputField(
                  controller: _fullNameController,
                  
                ),
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
                  isPassword: true,
                ),
               // const SizedBox(height: 3),
                const Padding(
                  padding: EdgeInsets.only(left:2.0),
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
                  isPassword: true,
                ),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:120.0),
                  child: ElevatedButton(
                    onPressed: _register,
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
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 329.0,
      decoration: BoxDecoration(
        color: Colors.white, // White background color inside the box
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: TextFormField(
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