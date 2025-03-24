import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/creatures/card_creature.dart';

class Creatures extends StatelessWidget {
  const Creatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creatures'),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {},
          ),
          
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              //trocar por listview
              children: [
                CardCreature(),
                SizedBox(
                  height: 10,
                ),
                CardCreature()
              ],
            ),
          )),
    );
  }
}
