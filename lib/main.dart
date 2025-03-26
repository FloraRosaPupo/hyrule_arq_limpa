import 'package:flutter/material.dart';
import 'package:hyrule/screens/categorys.dart';
//import 'package:hyrule/screens/categorys.dart';
//import 'package:hyrule/screens/creatures.dart';
//import 'package:hyrule/screens/creatures_details.dart';
import 'package:hyrule/screens/items.dart';

void main() {
  runApp(const Hyrule());
}

class Hyrule extends StatelessWidget {
  const Hyrule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hyrule',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors
              .blue, //colorSchemeSeed é um valor de cor que é usado para gerar um esquema de cores para o tema
          brightness:
              Brightness.dark, //brightness é a luminosidade do tema -> escuro
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Escolha uma categoria',
            ),
            centerTitle: true,
          ),
          body: const SafeArea(child: Categorys()),
        ));
  }
}
