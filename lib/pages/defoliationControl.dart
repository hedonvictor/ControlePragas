import 'package:controlepragas/pages/components/customDropdownButtonDefoli.dart';
import 'package:controlepragas/pages/components/customDropdownPoints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:controlepragas/pages/components/dropdownComp.dart';
import 'package:controlepragas/pages/components/customDropdownButton.dart';
import 'package:controlepragas/pages/components/dropdownCompDefoli.dart';

class Defoliationcontrol extends StatelessWidget {
  const Defoliationcontrol({Key? key}) : super(key: key);

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
                  "     Informe os dados\n"
                  "sobre o desfolhemanto:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Selecione o desfolhamento",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const DropDownButtonDefoliation(),
                const SizedBox(height: 30),
                const Text(
                  "Selecione a fase",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 250,
                  child: const CustomDropdownButtonDefoli(options: [
                    'Ninfa (3º ao 5º instar)',
                    'Adulto',
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
                  height: 50,
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
                      width: 20,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.save,
                        size: 55,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print('Salvar');
                      },
                      splashColor: Colors.transparent, // Define a cor da "splash" como transparente
                      highlightColor: Colors.transparent, // Define a cor do destaque como transparente
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
