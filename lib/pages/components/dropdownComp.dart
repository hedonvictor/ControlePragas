import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Selecione',
  'Lagarta da Soja (Anticarsia)',
  'Lagarta Falsa medideira (Chrysodeixis)',
  'Lagarta das Vagens (Spodoptera spp)',
  'Lagartas do grupo Heliothinae'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 55,
      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      dropdownColor: Colors.grey, //Cor de fundo
      borderRadius: BorderRadius.circular(8.0),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
