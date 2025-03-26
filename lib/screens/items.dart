import 'package:flutter/material.dart';
//import 'package:hyrule/screens/components/card_categorys.dart';
//import 'package:hyrule/screens/components/creatures/card_commonLocations.dart';
import 'package:hyrule/screens/components/creatures/card_creature.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Itens Salvos'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: //trocar por listView
                  const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CardCreature(),
                ],
              )),
        ));
  }
}
