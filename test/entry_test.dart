import 'package:flutter_test/flutter_test.dart';
import 'package:hyrule/features/compendium/domain/models/entry.dart';

void main() {
  test('localizações são decodificadas da resposta da API', () {
    final entry = Entry.fromMap({
      'id': 1,
      'name': 'Item',
      'image': '',
      'description': '',
      'category': 'items',
      'common_locations': ['Hyrule', 'Forest']
    });
    expect(entry.commonLocationsConvert(), ['Hyrule', 'Forest']);
  });
  test('localização ausente não cria uma localização fictícia', () {
    final entry = Entry.fromMap({
      'id': 1,
      'name': 'Item',
      'image': '',
      'description': '',
      'category': 'items'
    });
    expect(entry.commonLocationsConvert(), isEmpty);
  });
}
