import 'package:flutter/material.dart';
import './components/SelectedBox.dart';

class SelectBoxScreen extends StatelessWidget {
  const SelectBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Selecione a Calamidade:'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
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
          ],
        ),
      ),
    );
  }
}
