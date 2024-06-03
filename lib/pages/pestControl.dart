import 'package:flutter/material.dart';

import 'package:controlepragas/pages/defoliationControl.dart';

import 'package:controlepragas/Entities/Pest_Entity.dart';
import 'package:controlepragas/Entities/report_entity.dart';
import 'package:controlepragas/Repository/conexao.dart';




class PestControl extends StatefulWidget {
  final ReportEntity report;

  const PestControl({Key? key, required this.report}) : super(key: key);

  @override
  _PestControlState createState() => _PestControlState();
}

class _PestControlState extends State<PestControl> {
  final List<String> _pragasOptions = [
  'Lagarta da Soja (Anticarsia)',
  'Lagarta Falsa medideira (Chrysodeixis)',
  'Lagarta das Vagens (Spodoptera spp)',
  'Lagartas do grupo Heliothinae'
];
  final List<String> _tamanhoOptions = ['Pequeno', 'Grande'];
  final List<int> _pontosOptions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  String? _selectedPraga;
  String? _selectedTamanho;
  int? _selectedPontos;
  final List<PestEntity> _pragas = [];

  void _addPraga() {
    if (_selectedPraga != null &&
        _selectedTamanho != null &&
        _selectedPontos != null) {
      final praga = PestEntity(
        nome: _selectedPraga!,
        pontosDeAmostragem: _selectedPontos!,
        tamanho: _selectedTamanho!,
      );
      setState(() {
        _pragas.add(praga);
      });
      _selectedPraga = null;
      _selectedTamanho = null;
      _selectedPontos = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 12, 20, 94),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Informe os dados\n"
                "   sobre a praga:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                "Selecione a Praga",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              DropdownButton<String>(
                value: _selectedPraga,
                hint: const Text('Selecione a Praga',
                    style: TextStyle(color: Colors.white)),
                dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedPraga = newValue;
                  });
                },
                items: _pragasOptions
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
                "Selecione o tamanho",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              DropdownButton<String>(
                value: _selectedTamanho,
                hint: const Text('Selecione o Tamanho',
                    style: TextStyle(color: Colors.white)),
                dropdownColor: const Color.fromARGB(255, 12, 20, 94),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedTamanho = newValue;
                  });
                },
                items: _tamanhoOptions
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
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _addPraga,
                child: const Text(
                  "Adicionar",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "  Voltar  ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      final updatedReport =
                          widget.report.copyWith(pragas: _pragas);
                      DatabaseHelper().insertReport(updatedReport);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Defoliationcontrol(report: updatedReport),
                      ));
                    },
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
