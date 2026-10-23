import 'package:hyrule/features/compendium/data/api/data_api.dart';
import 'package:hyrule/features/compendium/domain/business/api_workflow.dart';
import 'package:hyrule/features/compendium/domain/models/entry.dart';

class ApiController implements ApiWorkflow {
  final DataApi dataApi = DataApi();

  @override
  Future<List<Entry>> getEntriesByCategory({required String category}) async {
    final entries = await dataApi.getEntreisByCategory(
        category: category); //Pegar todas as entradas por categoria
    return entries;
  } //Instancia da classe DataApi
}
