import 'package:controlepragas/Entities/report_entity.dart';
import 'package:flutter/material.dart';

import 'package:controlepragas/Repository/conexao.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _dataController = TextEditingController();
  final TextEditingController _monitorController = TextEditingController();
  final TextEditingController _propriedadeController = TextEditingController();
  final TextEditingController _cultivoController = TextEditingController();
  final TextEditingController _dataSemeaduraController = TextEditingController();

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
              controller: _dataController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'Data:',
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
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
            TextField(
              controller: _dataSemeaduraController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'Data da semeadura:',
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: () async {
                final data = DateTime.parse(_dataController.text);
                final monitor = _monitorController.text;
                final propriedade = _propriedadeController.text;
                final cultivo = _cultivoController.text;
                final dataSemeadura = DateTime.parse(_dataSemeaduraController.text);

                final report = ReportEntity(
                  monitor: monitor,
                  propriedade: propriedade,
                  cultivo: cultivo,
                  data: data,
                  dataSemeadura: dataSemeadura,
                  pragas: [],  // Inicialmente vazio, pode ser preenchido conforme necessário
                  doencas: [],  // Inicialmente vazio, pode ser preenchido conforme necessário
                  desfolhamentos: [],  // Inicialmente vazio, pode ser preenchido conforme necessário
                  predadores: []  // Inicialmente vazio, pode ser preenchido conforme necessário
                );

                // Inserir no banco de dados
                await dbHelper.insertReport(report);

                // Navegar para a próxima tela
                Navigator.of(context).pushNamed('/selectRegion');
              },
              child: const Text(
                "Continuar",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
