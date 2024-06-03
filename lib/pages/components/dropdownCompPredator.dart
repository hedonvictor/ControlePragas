import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Selecione',
  'Calosoma Granulatum',
  'Callida Sp.',
  'Callida Scutellaris',
  'Lebia Concinna'
];

class DropdownButtonPredator extends StatefulWidget {
  const DropdownButtonPredator({super.key});

  @override
  State<DropdownButtonPredator> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonPredator> {
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
        width: double.infinity,
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
