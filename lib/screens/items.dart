import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/screens/components/creatures/card_creature.dart';
//import 'package:hyrule/screens/components/card_categorys.dart';
//import 'package:hyrule/screens/components/creatures/card_commonLocations.dart';

class Items extends StatefulWidget {
  Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final DaoController daoController = DaoController();
  List entries = []; // Lista para armazenar os itens salvos

  void _loadEntries() {
    daoController.getSavedEntry().then((value) {
      setState(() {
        entries = value; // Atualiza a lista de entradas salvas
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Itens Salvos'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: FutureBuilder(
                future: daoController.getSavedEntry(), //todas as entradas
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
                          itemCount: snaphot.data!.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: CardCreature(
                              paginaItem: true,
                              entry: snaphot.data![index],
                              onRefresh: _loadEntries,
                            ),
                          ),
                        );
                      } else {
                        return const Center(
                          child: Text('Nenhum item salvo'),
                        );
                      }
                  }
                }),
          ),
        ));
  }
}
