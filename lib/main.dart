import 'package:controlepragas/pages/defoliationControl.dart';
import 'package:controlepragas/pages/home.dart';
import 'package:controlepragas/pages/pestControl.dart';
import 'package:controlepragas/pages/predator.dart';
import 'package:controlepragas/pages/selectRegion.dart';
import 'package:flutter/material.dart';
import './pages/components/TextInputDemo.dart';
import 'package:controlepragas/pages/dataDisease.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectBoxScreen(),
    );
  }
}
