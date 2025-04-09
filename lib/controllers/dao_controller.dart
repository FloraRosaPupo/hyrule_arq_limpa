//Controller do banco de dados -> Atribui a logica de negocio do banco de dados
import 'package:hyrule/data/dao/database.dart';
import 'package:hyrule/data/dao/entry_dao.dart';
import 'package:hyrule/domain/business/dao_workflow.dart';
import 'package:hyrule/domain/models/entry.dart';

class DaoController implements DaoWorkflow {
  //criar o banco de dados
  Future<EntryDao> createDatabase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final EntryDao entryDao = database.entryDao; //pegar a tabela
    return entryDao;
  }

  //funcoes da interface DaoWorkflow
  @override
  Future<void> deleteEntry({required Entry entry}) async {
    final EntryDao entryDao = await createDatabase(); //criar o banco de dados
    entryDao.deleteEntry(entry); //deletar a entrada
  }

  @override
  Future<List<Entry>> getSavedEntry() async {
    final EntryDao entryDao = await createDatabase(); //criar o banco de dados
    return entryDao.getAllEntries(); //pegar todas as entradas
  }

  @override
  Future<void> saveEntry({required Entry entry}) async {
    final EntryDao entryDao = await createDatabase(); //criar o banco de dados
    entryDao.addEntry(entry); //adicionar a entrada
  }

  getAllEntries() {}
}
