/*Entidades*/
import 'dart:convert';

import 'package:floor/floor.dart';

@entity
class Entry {
  @primaryKey
  int id;
  //construtor
  Entry({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.commonLocations,
    required this.category,
  });

  //variaveis de definicao da class
  String name;
  String image;
  String description;
  String commonLocations;
  String category;

  // Método para converter um objeto Entry em um mapa JSON
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'commonLocations': commonLocations,
      'category': category,
    };
  }

  //json do commonLocations em uma lista de string
  List<String> commonLocationsConvert() {
    return (jsonDecode(commonLocations) as List<dynamic>)
        .map((e) => e.toString())
        .toList();
  }

  // Método para criar um objeto Entry a partir de um mapa JSON
  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      description: map['description'],
      commonLocations: jsonEncode(
          map['common_locations'] ?? 'Sem localização' /*Null check*/),
      category: map['category'],
    );
  }
}
