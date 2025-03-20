import 'dart:async';
import 'package:floor/floor.dart';
import 'package:hyrule/data/dao/entry_dao.dart';
import 'package:hyrule/domain/models/entry.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart'; /*flutter packages pub run build_runner build */

@Database(version: 1, entities: [
  Entry
] /*Sao as tabelas no banco de dados*/) //Aqui é onde se define a versão do banco de dados e as tabelas
abstract class AppDatabase extends FloorDatabase {
  EntryDao get entryDao;
}
