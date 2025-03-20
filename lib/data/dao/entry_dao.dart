/*Funcoes */
import 'package:floor/floor.dart';
import 'package:hyrule/domain/models/entry.dart';

@dao
abstract class EntryDao {
  @Query('SELECT * FROM Entry')
  Future<List<Entry>> getAllEntries();

  @Insert(
      onConflict:
          OnConflictStrategy.replace /*Se houver conflito de id, substitui*/)
  Future<void> addEntry(Entry entry);

  @delete
  Future<void> deleteEntry(Entry entry);
}
