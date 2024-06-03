import 'package:flutter/material.dart'; 

import 'package:controlepragas/Repository/conexao.dart';

import 'package:controlepragas/pages/defoliationControl.dart';
import 'package:controlepragas/pages/home.dart';
import 'package:controlepragas/pages/pestControl.dart';
import 'package:controlepragas/pages/predator.dart';
import 'package:controlepragas/pages/selectRegion.dart';
import 'package:controlepragas/pages/dataDisease.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await DatabaseHelper.instance.initDatabase();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de Pestes',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/pestControl': (context) => const pestControl(),
        '/defoliationControl': (context) => const Defoliationcontrol(),
        '/selectRegion': (context) => const SelectBoxScreen(),
        '/predators': (context) => const Predator(),
        '/dataDisease': (context) => const Datadisease(),
      },
    );
  }
}
