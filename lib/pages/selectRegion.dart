import 'package:flutter/material.dart';
import './components/SelectedBox.dart';

class SelectBoxScreen extends StatelessWidget {
  const SelectBoxScreen({super.key});

  void enviar() {
    print('Enviar');
  }

  void voltar() {
    print('Voltar');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(50.0),
          color: const Color.fromARGB(255, 12, 20, 94),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150,),
            CheckboxWithText(
              text: 'Pragas',
              initialValue: false,
              onChanged: (bool value) {
                print('Pragas: $value');
              },
            ),
            CheckboxWithText(
              text: 'Desfolhamentos',
              initialValue: false,
              onChanged: (bool value) {
                print('Desfolhamentos: $value');
              },
            ),
            CheckboxWithText(
              text: 'Doenças',
              initialValue: false,
              onChanged: (bool value) {
                print('Doenças: $value');
              },
            ),
            CheckboxWithText(
              text: 'Predadores',
              initialValue: false,
              onChanged: (bool value) {
                print('Predadores: $value');
              },
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            ),
            const SizedBox(height: 180),
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
     ),);
}
}