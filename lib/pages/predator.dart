import 'package:flutter/material.dart';

import 'package:controlepragas/pages/final.dart';

//Entities
import 'package:controlepragas/Entities/report_entity.dart';
import 'package:controlepragas/Entities/predator_entity.dart';

//DB
import 'package:controlepragas/Repository/conexao.dart';

class Predators extends StatefulWidget {
  final ReportEntity report;

  const Predators({Key? key, required this.report}) : super(key: key);

  @override
  _PredatorsState createState() => _PredatorsState();
}

class _PredatorsState extends State<Predators> {
  final List<String> _predatorsOptions = [
    'Calosoma Granulatum',
    'Callida Sp.',
    'Callida Scutellaris',
    'Lebia Concinna',
    'Aranhas',
  ];

  final List<int> _pontosOptions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  String? _selectedPredator;
  int? _selectedPontos;
  final List<PredatorEntity> _predators = [];

  void _addPredator() {
    if (_selectedPredator != null && _selectedPontos != null) {
      final praga = PredatorEntity(
        nome: _selectedPredator!,
        pontosDeAmostragem: _selectedPontos!,
      );
      setState(() {
        _predators.add(praga);
      });
      _selectedPredator = null;
      _selectedPontos = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            title: const Text('Dados da doença'),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(50.0),
          color: const Color.fromARGB(255, 12, 20, 94),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text(
                  "   Informe os dados\n"
                  "sobre os predadores:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Selecione o predador",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedPredator,
                  hint: const Text('Selecione o predador',
                      style: TextStyle(color: Colors.white)),
                  dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPredator = newValue;
                    });
                  },
                  items: _predatorsOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Pontos de Amostragem",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButton<int>(
                  value: _selectedPontos,
                  hint: const Text('Selecione os Pontos',
                      style: TextStyle(color: Colors.white)),
                  dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                  onChanged: (int? newValue) {
                    setState(() {
                      _selectedPontos = newValue;
                    });
                  },
                  items: _pontosOptions.map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString(),
                          style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                ElevatedButton(
                  onPressed: _addPredator,
                  child: const Text(
                    "Adicionar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/dataDisease');
                    },
                    child: const Text(
                      "   Voltar   ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final updatedReport =
                          widget.report.copyWith(predadores: _predators);
                      DatabaseHelper().insertReport(updatedReport);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReportDetailsPage(report: updatedReport)
                      ));
                    },
                    child: const Text(
                      "Finalizar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 95,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
