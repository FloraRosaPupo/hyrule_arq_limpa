/*Regra de negocio dos Banco de Dados */
import 'package:hyrule/domain/models/entry.dart';

abstract class DaoWorkflow {
  //pegar todos os dados do banco de dados
  Future<List<Entry>> getSavedEntry();
  //salvar no banco de dados
  Future<void> saveEntry({required Entry entry});
  //atualizar no banco de dados
  Future<void> deleteEntry({required Entry entry});
}
