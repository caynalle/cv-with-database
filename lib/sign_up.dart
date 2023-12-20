import 'dart:math';
import 'package:cvitae/homepage.dart';
import 'package:cvitae/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:cvitae/FormScreen.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formfield = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool passToggle = true;

  String passwordErrorText = "";
  String usernameErrorText = "";
   // Future<void> _signIn() async {
  //   // Perform password validation
  //   if (!_validatePassword(passController.text)) {
  //     setState(() {
  //       passwordErrorText =
  //           'Password must contain capital letters, numbers, special characters, and be at least 8 characters long.';
  //     });
  //     return;
  //   } else {
  //     setState(() {
  //       passwordErrorText = '';
  //     });
  //   }

  //   // Perform username validation
  //   if (!_validateUsername(usernameController.text)) {
  //     setState(() {
  //       usernameErrorText = 'Username must end with "@gmail.com"';
  //     });
  //     return;
  //   } else {
  //     setState(() {
  //       usernameErrorText = '';
  //     });
  //   }

  //   // Proceed with signup
  //   final response = await http.post(
  //     Uri.parse('http://localhost/registered_users/signup.php'),
  //     body: {
  //       'username': usernameController.text,
  //       'pass': passController.text,
  //     },
  //   );

  //   print('Server Response: ${response.body}');
  //   if (response.statusCode == 200) {
  //     final result = jsonDecode(response.body);
  //     print(result); // Print the entire response for debugging
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(result['message']),
  //       ),
  //     );
  //   } else {
  //     // Handle errors
  //     print('Error: ${response.statusCode}');
  //     print('Response body: ${response.body}');
  //   }
  // }

  Future<void> _signIn() async {
    final response = await http.post(
      Uri.parse('http://localhost/registered_users/signup.php'),
      body: {
        'username': usernameController.text,
        'pass': passController.text,
      },
    );

    print('Response: ${response.statusCode} - ${response.body}');

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result['message']),
        ),
      );
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

  // Password validation function
  bool _validatePassword(String password) {
    // Add your password validation logic here
    // For example, requiring capital letters, numbers, special characters, and a minimum length of 8
    RegExp passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return passwordRegExp.hasMatch(password);
  }

  // Username validation function
  bool _validateUsername(String username) {
    // Add your username validation logic here
    // For example, requiring the username to end with "@gmail.com"
    return username.endsWith('@gmail.com');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sign up Page',
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                TextFormField(
  keyboardType: TextInputType.emailAddress,
  controller: usernameController,
  decoration: InputDecoration(
    labelText: "Email or Username",
    labelStyle: TextStyle(
      color: Colors.greenAccent, // Set the color of the label text
    ),
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email, color: Colors.greenAccent), // Set the color of the icon
  ),
  style: TextStyle(color: Colors.greenAccent), // Set the color of the input text
),

               TextFormField(
  keyboardType: TextInputType.emailAddress,
  controller: passController,
  obscureText: passToggle,
  decoration: InputDecoration(
    labelText: "Password",
    labelStyle: TextStyle(
      color: Colors.greenAccent, // Set the color of the label text
    ),
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.lock, color: Colors.greenAccent), // Set the color of the icon
    suffix: InkWell(
      onTap: () {
        setState(() {
          passToggle = !passToggle;
        });
      },
      child: Icon(
        passToggle ? Icons.visibility : Icons.visibility_off,
        color: Colors.greenAccent, // Set the color of the suffix icon
      ),
    ),
  ),
  style: TextStyle(color: Colors.white), // Set the color of the input text
),

                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    _signIn();
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.greenAccent,
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}