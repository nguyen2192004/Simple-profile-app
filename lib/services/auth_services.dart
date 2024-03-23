import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/models/User.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user =
          User(id: '', name: name, email: email, token: '', password: password);
      http.Response res = await http.post(
          Uri.parse('http://localhost:8000/api/signup'),
          body: json.encode({'password': password, 'email': email}),
          headers: {
            "accept": "application/json",
            "content-type": "application/json"
          });
     if (res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign up successful')),
        );
      } else if (res.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign up failed: Email already exists')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign up failed')),
        );
      }
    } catch (e) {}
  }
}
