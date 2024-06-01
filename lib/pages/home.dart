import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: const EdgeInsets.all(50.0),
      color: const Color.fromARGB(255, 12, 20, 94),
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        const Text(
          "Bem Vindo(a)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const Text(
          "Vamos começar!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 28),
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Data :',
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Monitor:',
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Propriedade/Municipio:',
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Cultivo:',
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Data da semeadura:',
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Continuar",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ]),
    ));
  }
}
