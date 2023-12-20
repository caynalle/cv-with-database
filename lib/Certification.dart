import 'package:flutter/material.dart';

class Certification extends StatelessWidget {
  const Certification ({Key? key});

  @override
  Widget build(BuildContext context) {
    var myVariable = Scaffold(
      appBar: AppBar(
        title: const Text(
          'CERTIFICATION',
          style: TextStyle(color: Colors.greenAccent, fontSize: 15),
        ),
         iconTheme: const IconThemeData(color: Colors.greenAccent),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 3, 3), 
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.greenAccent, width: 5.0), 
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'DECEMBER 3, 2022',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),
              
              Center(
              child: Text(
                'National Certificate II “Computer Systems Servicing',
                style: TextStyle(fontSize: 12, color: Colors.white), 
                ),
              ),
              Text(
                'Valid until: November 25, 2027',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
    return myVariable;
  }
}
