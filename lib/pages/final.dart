import 'package:flutter/material.dart';
import 'package:controlepragas/Entities/report_entity.dart';

class ReportDetailsPage extends StatelessWidget {
  final ReportEntity report;

  const ReportDetailsPage({Key? key, required this.report}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Relatório'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data: ${report.data}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Monitor: ${report.monitor}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Propriedade/Município: ${report.propriedade}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Cultivo: ${report.cultivo}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pragas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var praga in report.pragas)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nome: ${praga.nome}'),
                    Text('Pontos de Amostragem: ${praga.pontosDeAmostragem}'),
                    Text('Tamanho: ${praga.tamanho}'),
                    const Divider(),
                  ],
                ),
              ),
            const SizedBox(height: 16),
            const Text(
              'Desfolhamentos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var desfolhamento in report.desfolhamentos)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tipo: ${desfolhamento.nome}'),
                    Text('Pontos Amostragem: ${desfolhamento.pontosDeAmostragem}'),
                    const Divider(),
                  ],
                ),
              ),
            const Text(
              'Doenças:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var doenca in report.doencas)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tipo: ${doenca.nome}'),
                    Text('Pontos Amostragem: ${doenca.pontosDeAmostragem}'),
                    const Divider(),
                  ],
                ),
              ),
            const Text(
              'Predadores:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var predador in report.predadores)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tipo: ${predador.nome}'),
                    Text('Pontos Amostragem: ${predador.pontosDeAmostragem}'),
                    const Divider(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
