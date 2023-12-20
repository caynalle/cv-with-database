import 'package:flutter/material.dart';
import 'package:cvitae/main.dart';
import 'package:cvitae/homepage.dart';
import 'package:http/http.dart' as http;
import 'package:cvitae/sign_up.dart';

import 'dart:convert';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailContoller = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Page',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 190, 33, 112),
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
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/nahuhulog.jpeg',
                  ),
                  radius: 70.0,
                ),
                SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailContoller,
                  decoration: const InputDecoration(
                    labelText: "Email or Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Email";
                    }
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (!emailValid) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (passController.text.length < 6) {
                      return "Password should be 6 characters and up";
                    } else if (!RegExp(
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$')
                        .hasMatch(value)) {
                      return "Password must meet the requirements";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () async {
                    if (_formfield.currentState?.validate() == true) {
                      var response = await http.post(
                        Uri.parse(
                            'http://localhost/registered_users/login.php'),
                        body: {
                          'username': emailContoller.text,
                          'pass': passController.text,
                        },
                      );

                      if (response.statusCode == 200) {
                        final result = jsonDecode(response.body);

                        if (result['success'] == true) {
                          // Login successful, navigate to the next screen
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                        } else {
                          // Login failed
                          print('Login failed: ${result['message']}');
                        }
                      } else {
                        // Handle non-200 status code (e.g., server error)
                        print('Server error: ${response.statusCode}');
                      }
                    } else {
                      print('Form validation failed');
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(184, 209, 19, 123),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Log In",
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
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => signUp()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
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
