import 'package:controlepragas/pages/dataDisease.dart';
import 'package:flutter/material.dart';

import 'package:controlepragas/Entities/desfolhamento_entity.dart';
import 'package:controlepragas/Entities/report_entity.dart';

import 'package:controlepragas/Repository/conexao.dart';



class Defoliationcontrol extends StatefulWidget {
  final ReportEntity report;

  const Defoliationcontrol({Key? key, required this.report}) : super(key: key);

  @override
  _DefoliationControlState createState() => _DefoliationControlState();
}

class _DefoliationControlState extends State<Defoliationcontrol> {
  final List<String> _desfolhamentoOptions = [
    'Selecione',
    'Percevejo-verde(Nezera)',
    'Percevejo-pequeno (Piezodorus)',
    'Percevejo-marrom (Euschistus)',
    'Percevejo-barriga-verde (Dichelops)'
  ];

  final List<String> _estagioOptions = [
    'Ninfa (3º ao 5º instar)',
    'Adulto',
  ];
  final List<int> _pontosOptions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  String? _selectedDesf;
  String? _selectedEstagio;
  int? _selectedPontos;
  final List<DesfolhamentoEntity> _desfolhamentos = [];

  void _addDesf() {
    if (_selectedDesf != null &&
        _selectedEstagio != null &&
        _selectedPontos != null) {
      final praga = DesfolhamentoEntity(
        nome: _selectedDesf!,
        estagio: _selectedEstagio!,
        pontosDeAmostragem: _selectedPontos!,
      );
      setState(() {
        _desfolhamentos.add(praga);
      });
      _selectedDesf = null;
      _selectedEstagio = null;
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
            title: const Text('Dados da praga'),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 12, 20, 94),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text(
                  "     Informe os dados\n"
                  "sobre o desfolhemanto:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Selecione o desfolhamento",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedDesf,
                  hint: const Text('Selecione o desfolhamento',
                      style: TextStyle(color: Colors.white)),
                  dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDesf = newValue;
                    });
                  },
                  items: _desfolhamentoOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Selecione a fase",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedEstagio,
                  hint: const Text('Selecione o estagio',
                      style: TextStyle(color: Colors.white)),
                  dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedEstagio = newValue;
                    });
                  },
                  items: _desfolhamentoOptions
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
                  onPressed: _addDesf,
                  child: const Text(
                    "Adicionar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/pestControl');
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
                          widget.report.copyWith(desfolhamentos: _desfolhamentos);
                      DatabaseHelper().insertReport(updatedReport);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DataDisease(report: updatedReport),
                      ));
                    },
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
