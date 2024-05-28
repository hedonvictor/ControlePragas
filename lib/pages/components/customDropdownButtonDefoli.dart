import 'package:flutter/material.dart';

class CustomDropdownButtonDefoli extends StatefulWidget {
  final List<String> options;

  const CustomDropdownButtonDefoli({Key? key, required this.options})
      : super(key: key);

  @override
  State<CustomDropdownButtonDefoli> createState() =>
      _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButtonDefoli> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.options.first;
  }

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
      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
