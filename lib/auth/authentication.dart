import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:first_flutter_application/models/User.dart';
import 'package:get/get.dart';

class Authentication extends GetxController {
  static Authentication get instance => Get.find();
  Future<void> createUser(User user) async {
    final String apiUrl = 'http://localhost:5000/users';
    final Map<String, dynamic> data = user.toJson();
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 201) {
      //successfully created the record in the database
      print('Data posted successfully');
      return;
    } else {
      //Failed to create the record
      print('Failed to post data,Status code: ${response.statusCode}');
      return;
    }
  }
}
