import 'package:controlepragas/pages/components/dropdownComp.dart';
import 'package:flutter/material.dart';

class pestControl extends StatelessWidget {
  const pestControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dados da praga'),
          ),
          body: const Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  "Informe os dados\n"
                  "   sobre a praga:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  "Selecione a Praga",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                DropdownButtonExample(),
                SizedBox(height: 40),
                Text(
                  "Selecione o tamanho",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                DropdownButtonExample(),
              ],
            ),
          )),
    );
  }
}
