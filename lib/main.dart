import 'package:controlepragas/pages/home.dart';
import 'package:controlepragas/pages/pestControl.dart';
import 'package:flutter/material.dart';
import './pages/components/TextInputDemo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: pestControl(),
    );
  }
}
