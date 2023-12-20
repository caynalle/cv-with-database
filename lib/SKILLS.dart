import 'package:flutter/material.dart';

class SKILLS extends StatelessWidget {
  const SKILLS({Key? key});

  @override
  Widget build(BuildContext context) {
    var myVariable = Scaffold(
      appBar: AppBar(
        title: const Text(
          'SUMMARY OF QUALIFICATIONS',
          style: TextStyle(color: Colors.greenAccent, fontSize: 15),
        ),
         iconTheme: const IconThemeData(color: Colors.greenAccent),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 3, 3), // Background color of the container
            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
            border: Border.all(color: Colors.greenAccent, width: 5.0), // Border properties
          ),
          padding: const EdgeInsets.all(20.0), // Padding inside the container
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
              child: Text(
                'Proficient in Microsoft Office (Word, Excel, PowerPoint)',
                style: TextStyle(fontSize: 12, color: Colors.white), // Text color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Time Management',
                style: TextStyle(fontSize: 12, color: Colors.white), // Text color
              ),
              SizedBox(height: 10),
              Text(
                'Team Work',
                style: TextStyle(fontSize: 12, color: Colors.white), // Text color
              ),
              SizedBox(height: 10),
              Text(
                'Basic knowledge in Computer Systems and Networks',
                style: TextStyle(fontSize: 12, color: Colors.white), // Text color
              ),
            ],
          ),
        ),
      ),
    );
    return myVariable;
  }
}