import 'package:controlepragas/pages/home.dart';
import 'package:controlepragas/pages/pestControl.dart';
import 'package:controlepragas/pages/selectRegion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
