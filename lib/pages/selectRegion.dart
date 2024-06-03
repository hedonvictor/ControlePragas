import 'package:flutter/material.dart';
import './components/SelectedBox.dart';

class SelectBoxScreen extends StatelessWidget {
  const SelectBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(
          child: Text('Selecione a Calamidade:'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        color: const Color.fromARGB(255, 12, 20, 94),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  onPressed: () async {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: const Text(
                    "   Voltar   ",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed('/pestControl');
                  },
                  child: const Text(
                    "Continuar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 110),
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
    );
  }
}
