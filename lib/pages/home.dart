import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controle de pragas"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 134),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Lorem");
        },
        child: const Icon(Icons.calendar_today),
      ),
      body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              const Text(
                "Bem Vindo(a)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text(
                "Vamos começar!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 28),
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 237, 255, 133)), // Cor de fundo verde
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
                decoration: InputDecoration(
                  labelText: 'monitor:',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 237, 255, 133)), // Cor de fundo verde
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
                      Color.fromARGB(255, 237, 255, 133)), // Cor de fundo verde
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
                      const Color.fromARGB(255, 237, 255, 133)),
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
