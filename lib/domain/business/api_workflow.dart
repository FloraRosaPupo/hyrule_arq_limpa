/*Regra de negocio da Api */

import 'package:hyrule/domain/models/entry.dart';

abstract class ApiWorkflow {
  //pegar todos os dados da api
  Future<List<Entry>> getEntriesByCategory({required String category});
}
