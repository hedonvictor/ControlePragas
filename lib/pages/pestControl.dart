import 'dart:ui';

import 'package:controlepragas/pages/components/customDropdownButton.dart';
import 'package:controlepragas/pages/components/customDropdownPoints.dart';
import 'package:controlepragas/pages/components/customTextButton.dart';
import 'package:controlepragas/pages/components/dropdownComp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class pestControl extends StatelessWidget {
  const pestControl({Key? key}) : super(key: key);

  void enviar() {
    print('Voltar');
  }

  void adicionar() {
    print('Adicionar');
  }

  void voltar() {
    print('Continuar');
  }

  void salvar() {
    print('Salvar');
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
                const SizedBox(height: 30),
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
                const Customdropdownpoints(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    ElevatedButton(
                      onPressed: enviar,
                      child: const Text(
                        "  Voltar  ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Continuar",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 55,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(
                      Icons.account_circle_rounded,
                      size: 55,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(
                      Icons.notifications_active_rounded,
                      size: 55,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.save,
                        size: 55,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print('Salvar');
                      }
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
