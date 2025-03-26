import 'package:flutter/material.dart';
import 'package:hyrule/controllers/api_controller.dart';
import 'package:hyrule/screens/components/creatures/card_creature.dart';
import 'package:hyrule/utils/consts/categorys.dart';

class Creatures extends StatelessWidget {
  Creatures({super.key, required this.category});

  final String category;

  final ApiController apiController = ApiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categories[category]!),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
            future: apiController.getEntriesByCategory(category: category),
            builder: (context, snaphot) {
              switch (snaphot.connectionState) {
                case ConnectionState.none:
                  return Container();
                case ConnectionState
                      .waiting: //mostra um circulo de carregamento
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.active:
                  return Container();
                case ConnectionState
                      .done: //mostra algo na tela quando a conexão é feita
                  if (snaphot.hasData) {
                    //tem dados
                    return ListView.builder(
                        //itemCount: snaphot.data.length,
                        itemBuilder: (context, index) => CardCreature(
                              entry: snaphot.data![index],
                            ));
                  }
              }
              return const Center(
                child: Text('Erro ao Carregar a API'),
              );
            }),
      ),
    );
  }
}
