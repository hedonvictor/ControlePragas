import 'package:controlepragas/Entities/Pest_Entity.dart';
import 'package:controlepragas/Entities/desfolhamento_entity.dart';
import 'package:controlepragas/Entities/doenca_entity.dart';
import 'package:controlepragas/Entities/predator_entity.dart';

class ReportEntity {
  final String monitor;
  final String propriedade;
  final String cultivo;
  final DateTime data;
  final List<PestEntity> pragas;
  final List<DoencaEntity> doencas;
  final List<DesfolhamentoEntity> desfolhamentos;
  final List<PredatorEntity> predadores;

  ReportEntity({
    required this.monitor,
    required this.propriedade,
    required this.cultivo,
    required this.data,
    required this.pragas,
    required this.doencas,
    required this.desfolhamentos,
    required this.predadores,
  });

  ReportEntity copyWith({
    String? monitor,
    String? propriedade,
    String? cultivo,
    DateTime? data,
    DateTime? dataSemeadura,
    List<PestEntity>? pragas,
    List<DoencaEntity>? doencas,
    List<DesfolhamentoEntity>? desfolhamentos,
    List<PredatorEntity>? predadores,
  }) {
    return ReportEntity(
      monitor: monitor ?? this.monitor,
      propriedade: propriedade ?? this.propriedade,
      cultivo: cultivo ?? this.cultivo,
      data: data ?? this.data,
      pragas: pragas ?? this.pragas,
      doencas: doencas ?? this.doencas,
      desfolhamentos: desfolhamentos ?? this.desfolhamentos,
      predadores: predadores ?? this.predadores,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'monitor': monitor,
      'propriedade': propriedade,
      'cultivo': cultivo,
      'data': data.toIso8601String(),
    };
  }

  ReportEntity.fromMap(Map<String, dynamic> map)
      : monitor = map['monitor'],
        propriedade = map['propriedade'],
        cultivo = map['cultivo'],
        data = DateTime.now(),
        pragas = [], // Você precisará adicionar a lógica para converter os mapas de pragas, doenças, etc., em objetos correspondentes
        doencas = [],
        desfolhamentos = [],
        predadores = [];
}


