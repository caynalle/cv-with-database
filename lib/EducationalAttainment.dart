import 'package:flutter/material.dart';

class EducationalAttainment extends StatelessWidget {
  const EducationalAttainment ({Key? key});

  @override
  Widget build(BuildContext context) {
    var myVariable = Scaffold(
      appBar: AppBar(
        title: const Text(
          'EDUCATIONAL ATTAINMENT',
          style: TextStyle(color: Colors.greenAccent),
        ),
         iconTheme: const IconThemeData(color: Colors.greenAccent),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 3, 3), // color ng container
            borderRadius: BorderRadius.circular(10.0), // radious ng bilog
            border: Border.all(color: Colors.greenAccent, width: 5.0), // border
          ),
          padding: const EdgeInsets.all(20.0), // space sa loob ng container
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'COLLEGE',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),
              
              Center(
              child: Text(
                'Bachelor of Science in Information Technology',
                style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              Text(
                '2020-Present: Philippine College of Science and Technology',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              SizedBox(height: 10),

              Text(
                'SENIOR HIGH',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),
              
              Text(
                'General Academic Strand',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              Text(
                '2018-2020: Bued National High School',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              SizedBox(height: 10),

              Text(
                'JUNIOR HIGH',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Bued National High School',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              Text(
                '2014-2018: Bued, Calasiao, Pangasinan',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),

              Text(
                'PRIMARY',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Quesban Elementary School',
                style: TextStyle(fontSize: 12, color: Colors.white), 
              ),
              Text(
                '2008-2014: Quesban, Calasiao, Pangasinan',
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
