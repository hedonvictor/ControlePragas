import 'package:flutter/material.dart';

import 'package:controlepragas/Entities/report_entity.dart';

import 'package:controlepragas/pages/pestControl.dart';
import 'package:controlepragas/pages/reportsPage.dart';

import 'package:controlepragas/Repository/conexao.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _monitorController = TextEditingController();
  final TextEditingController _propriedadeController = TextEditingController();
  final TextEditingController _cultivoController = TextEditingController();

  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50.0),
        color: const Color.fromARGB(255, 12, 20, 94),
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              "Bem Vindo(a)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const Text(
              "Vamos começar!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 28),
            TextField(
              controller: _monitorController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'Monitor:',
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            TextField(
              controller: _propriedadeController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'Propriedade/Municipio:',
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            TextField(
              controller: _cultivoController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'Cultivo:',
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                // Capturar os valores dos TextFields
                final data = DateTime.now();
                final monitor = _monitorController.text;
                final propriedade = _propriedadeController.text;
                final cultivo = _cultivoController.text;

                // Criar uma instância de ReportEntity
                final report = ReportEntity(
                  monitor: monitor,
                  propriedade: propriedade,
                  cultivo: cultivo,
                  data: data,
                  pragas: [],
                  doencas: [],
                  desfolhamentos: [],
                  predadores: [],
                );
                // Navegar para a próxima página para adicionar pragas
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PestControl(report: report),
                ));
              },
              child: const Text(
                "Continuar",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 88),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ReportsPage()));
              },
              icon: Icon(Icons.article_sharp),
              iconSize: 70,
            )
          ],
        ),
      ),
    );
  }
}
