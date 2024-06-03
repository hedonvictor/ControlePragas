import 'dart:ui';

import 'package:controlepragas/pages/components/customDropdownButton.dart';
import 'package:controlepragas/pages/components/customTextButton.dart';
import 'package:controlepragas/pages/components/dropdownComp.dart';
import 'package:flutter/cupertino.dart';
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
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
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
                const DropdownButtonExample(),
                const SizedBox(height: 40),
                const Text(
                  "Selecione o tamanho",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 270,
                  child: const CustomDropdownButton(options: [
                    'Pequeno',
                    'Grande',
                  ]),
                ),
                const SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed('/selectRegion');
                  },
                    child: const Text(
                      "  Voltar  ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed('/defoliationControl');
                  },
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 110,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.account_circle_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.notifications_active_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
