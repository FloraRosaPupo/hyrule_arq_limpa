import 'package:dio/dio.dart';
import 'package:hyrule/domain/models/entry.dart';
import 'package:hyrule/utils/consts/api.dart';

class DataApi {
  final Dio dio = Dio();

  List<Entry> entries = []; //Lista de entradas

  Future<List<Entry>> getEntreisByCategory({required String category}) async {
    //Requisição de dados
    final response = await dio.get(urlApi + category);
    //Mapeamento dos dados
    entries = List<Entry>.from(
        response.data['data'].map((entry) => Entry.fromMap(entry)));
    return entries;
  }
}
