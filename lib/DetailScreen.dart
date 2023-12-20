import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Detail', style: TextStyle(color: Colors.greenAccent)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
         iconTheme: const IconThemeData(color: Colors.greenAccent),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(
          tag: 'profile_image', 
          child: Image.asset('images/me.jpeg'),
        ),
      ),
    );
  }
}