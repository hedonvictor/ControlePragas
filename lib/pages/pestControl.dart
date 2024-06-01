import 'package:controlepragas/pages/components/customDropdownButton.dart';
import 'package:controlepragas/pages/components/dropdownComp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pestControl extends StatelessWidget {
  const pestControl({Key? key}) : super(key: key);

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
          child: const Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  "Informe os dados\n"
                  "   sobre a praga:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  "Selecione a Praga",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                DropdownButtonExample(),
                SizedBox(height: 40),
                Text(
                  "Selecione o tamanho",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                CustomDropdownButton(options: [
                  'Pequeno',
                  'Grande',
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
