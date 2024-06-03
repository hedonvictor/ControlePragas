import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:controlepragas/Entities/report_entity.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._internal();

  factory DatabaseHelper() => instance;

  DatabaseHelper._internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'app_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ReportEntity (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        monitor TEXT NOT NULL,
        propriedade TEXT NOT NULL,
        cultivo TEXT NOT NULL,
        data TEXT NOT NULL,
      )
    ''');

    await db.execute('''
      CREATE TABLE PestEntity (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        reportId INTEGER NOT NULL,
        nome TEXT NOT NULL,
        pontosDeAmostragem INTEGER NOT NULL,
        tamanho TEXT NOT NULL,
        FOREIGN KEY (reportId) REFERENCES ReportEntity (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE DoencaEntity (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        reportId INTEGER NOT NULL,
        nome TEXT NOT NULL,
        pontosDeAmostragem INTEGER NOT NULL,
        FOREIGN KEY (reportId) REFERENCES ReportEntity (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE DesfolhamentoEntity (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        reportId INTEGER NOT NULL,
        nome TEXT NOT NULL,
        pontosDeAmostragem INTEGER NOT NULL,
        estagio TEXT NOT NULL,
        FOREIGN KEY (reportId) REFERENCES ReportEntity (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE PredatorEntity (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        reportId INTEGER NOT NULL,
        nome TEXT NOT NULL,
        pontosDeAmostragem INTEGER NOT NULL,
        FOREIGN KEY (reportId) REFERENCES ReportEntity (id) ON DELETE CASCADE
      )
    ''');
  }

  Future<void> insertReport(ReportEntity report) async {
    final db = await database;

    int reportId = await db.insert('ReportEntity', {
      'monitor': report.monitor,
      'propriedade': report.propriedade,
      'cultivo': report.cultivo,
      'data': report.data.toIso8601String(),
    });

    for (var praga in report.pragas) {
      await db.insert('PestEntity', {
        'reportId': reportId,
        'nome': praga.nome,
        'pontosDeAmostragem': praga.pontosDeAmostragem,
        'tamanho': praga.tamanho,
      });
    }

    for (var doenca in report.doencas) {
      await db.insert('DoencaEntity', {
        'reportId': reportId,
        'nome': doenca.nome,
        'pontosDeAmostragem': doenca.pontosDeAmostragem,
      });
    }

    for (var desfolhamento in report.desfolhamentos) {
      await db.insert('DesfolhamentoEntity', {
        'reportId': reportId,
        'nome': desfolhamento.nome,
        'pontosDeAmostragem': desfolhamento.pontosDeAmostragem,
        'estagio': desfolhamento.estagio,
      });
    }

    for (var predador in report.predadores) {
      await db.insert('PredatorEntity', {
        'reportId': reportId,
        'nome': predador.nome,
        'pontosDeAmostragem': predador.pontosDeAmostragem,
      });
    }
  }

Future<List<ReportEntity>> getReports() async {
  final Database db = await database;
  final List<Map<String, dynamic>> maps = await db.query('ReportEntity');
  return List.generate(maps.length, (i) {
    return ReportEntity.fromMap(maps[i]);
  });
}

}
