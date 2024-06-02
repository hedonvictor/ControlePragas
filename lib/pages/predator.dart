import 'package:controlepragas/pages/components/customDropdownPoints.dart';
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
                const SizedBox(height: 30),
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
                  height: 95,
                ),
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
