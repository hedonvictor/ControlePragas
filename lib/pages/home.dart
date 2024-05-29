import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(50.0),
          color: const Color.fromARGB(255, 12, 20, 94),
          child: Column(
            children: [
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
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)), // Cor de fundo verde
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Data: '), // Placeholder "Data:"
                    Icon(Icons.calendar_today), // Ícone de calendário opcional
                  ],
                ),
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)), // Cor de fundo verde
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Propriedade/Municipio: '), // Placeholder "Data:"
                    Icon(Icons.calendar_today), // Ícone de calendário opcional
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)), // Cor de fundo verde
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Cultivo: '), // Placeholder "Data:"
                    Icon(Icons.calendar_today), // Ícone de calendário opcional
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Data da semeadura: '), // Placeholder "Data:"
                    Icon(Icons.calendar_today), // Ícone de calendário opcional
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
