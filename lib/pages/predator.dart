import 'package:controlepragas/pages/components/dropdownCompDisease.dart';
import 'package:controlepragas/pages/components/dropdownCompPredator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:controlepragas/pages/components/dropdownCompDefoli.dart';

class Predator extends StatelessWidget {
  const Predator({Key? key}) : super(key: key);

  void enviar() {
    print('Enviar');
  }

  void voltar() {
    print('Continuar');
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
                  "   Informe os dados\n"
                  "sobre os predadores:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Selecione o predador",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const DropdownButtonPredator(),
                const SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: voltar,
                    child: const Text(
                      "   Voltar   ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 200,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
