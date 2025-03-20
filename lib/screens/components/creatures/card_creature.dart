import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/creatures/card_commonLocations.dart';

class CardCreature extends StatefulWidget {
  const CardCreature({super.key});

  @override
  State<CardCreature> createState() => _CardCreatureState();
}

class _CardCreatureState extends State<CardCreature> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Image(
                image: AssetImage('assets/images/creatures.png'),
                width: 100,
                height: 100,
              ),
              Column(
                children: [
                  Text('Nome:'),
                  Text('Descrição:'),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF3B4858),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Wrap(
                children: [
                  CardCommonlocations(),
                ],
              ))
        ],
      ),
    );
  }
}
