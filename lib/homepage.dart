import 'package:flutter/material.dart';
import 'EducationalAttainment.dart';
import 'STA.dart';
import 'Certification.dart';
import 'SKILLS.dart';
import 'DetailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY CURRICULUM VITAE',
            style: TextStyle(color: Colors.greenAccent)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:(context) => const DetailScreen(),
                  ),
                );
              },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(140.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 8.0,
                  ),
                ),
                
                child: Hero(tag: 'profile_image',
                  child: ClipOval(
                    child: Image.asset(
                      'images/me.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),

            const Text(
              'Caynalle Anne L. Aquino',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Web Developer',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Contact Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Email: caynalle02@gmail.com',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const Text(
              'Phone: 09058381857',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const Text(
              'Personal Background:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Age: 21',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Birthday: February 15, 2002',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Civil Status: Single',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Citizenship: Filipino',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Religion: Catholic',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Language Spoken: Filipino, English, Pangasinan',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Text(
              'Motto: "konting bato, konting simento, monumento"',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5.0),

            const Divider( // Add a horizontal line
                color: Colors.greenAccent, // Color of the line
                thickness: 3.0, // Thickness of the line
                indent: 10.0, // Indent from the left
                endIndent: 10.0, // End indent from the right
            ),

            const SizedBox(height: 10.0),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EducationalAttainment()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.greenAccent,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const STA()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.work_history,
                        color: Colors.greenAccent,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Certification()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.badge,
                        color: Colors.greenAccent,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SKILLS()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.build,
                        color: Colors.greenAccent,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
