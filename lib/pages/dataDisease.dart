import 'package:flutter/material.dart';

import 'package:controlepragas/pages/predator.dart';

//ENTITIES
import 'package:controlepragas/Entities/doenca_entity.dart';
import 'package:controlepragas/Entities/report_entity.dart';
//DB
import 'package:controlepragas/Repository/conexao.dart';

class DataDisease extends StatefulWidget {
  final ReportEntity report;

  const DataDisease({Key? key, required this.report}) : super(key: key);

  @override
  _DataDiseaseState createState() => _DataDiseaseState();
}

class _DataDiseaseState extends State<DataDisease> {
  final List<String> _doencaOptions = [
    'Selecione',
    'Lagarta com Nomuraea (doença branca)',
    'Lagarta com Baculovírus (doença preta)'
  ];

  final List<int> _pontosOptions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  String? _selectedDoenca;
  int? _selectedPontos;
  final List<DoencaEntity> _doencas = [];

  void _addDoenca() {
    if (_selectedDoenca != null && _selectedPontos != null) {
      final praga = DoencaEntity(
        nome: _selectedDoenca!,
        pontosDeAmostragem: _selectedPontos!,
      );
      setState(() {
        _doencas.add(praga);
      });
      _selectedDoenca = null;
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
                  "Informe os dados\n"
                  " sobre a doença:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Selecione a doença",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedDoenca,
                  hint: const Text('Selecione a doenca',
                      style: TextStyle(color: Colors.white)),
                  dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDoenca = newValue;
                    });
                  },
                  items: _doencaOptions
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
                  onPressed: _addDoenca,
                  child: const Text(
                    "Adicionar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/defoliationControl');
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
                          widget.report.copyWith(doencas: _doencas);
                      DatabaseHelper().insertReport(updatedReport);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Predators(report: updatedReport),
                      ));
                    },
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
