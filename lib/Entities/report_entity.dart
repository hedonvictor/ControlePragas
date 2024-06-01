import 'package:controlepragas/Entities/Pest_Entity.dart';
import 'package:controlepragas/Entities/desfolhamento_entity.dart';
import 'package:controlepragas/Entities/doenca_entity.dart';
import 'package:controlepragas/Entities/predator_entity.dart';

class ReportEntity {
  final String monitor;
  final String propriedade;
  final String cultivo;
  final DateTime data;
  final DateTime dataSemeadura;
  final List<PestEntity> pragas;
  final List<DoencaEntity> doencas;
  final List<DesfolhamentoEntity> desfolhamentos; 
  final List<PredatorEntity> predadores;

  ReportEntity({
    required this.monitor,
    required this.propriedade,
    required this.cultivo,
    required this.data,
    required this.dataSemeadura,
    required this.pragas,
    required this.doencas,
    required this.desfolhamentos,
    required this.predadores, // Inicializando a lista de pragas
  });
}
