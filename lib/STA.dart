import 'package:flutter/material.dart';

class STA extends StatelessWidget {
  const STA ({Key? key});

  @override
  Widget build(BuildContext context) {
    var myVariable = Scaffold(
      appBar: AppBar(
        title: const Text(
          'SEMINAR AND TRAININGS ATTENDED',
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
                'Initiating and Implementing Digital Transformation',
                style: TextStyle(fontSize: 12, color: Colors.white), 
                ),
              ),
              Text(
                'Philippine College of Science and Technology',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              SizedBox(height: 10),

              Text(
                '2021-2022',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),
              
              Text(
                'Networking 1 & 2: Training for Computer System Servicing NCII',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              Text(
                'Philippine College of Science and Technology',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              SizedBox(height: 10),

              Text(
                'ON THE JOB TRAINING',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Work Immersion (OJT) at Public Order and Safety Office',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              Text(
                'January 2020 - February 2020',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
            ],
          ),
        ),
      ),
    );
    return myVariable;
  }
}
