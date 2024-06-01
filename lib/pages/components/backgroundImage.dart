import 'package:flutter/material.dart';

class backgroundImage extends StatefulWidget {
  const backgroundImage({super.key});

  @override
  State<backgroundImage> createState() => _backgroundImageState();
}

class _backgroundImageState extends State<backgroundImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backmaras2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
