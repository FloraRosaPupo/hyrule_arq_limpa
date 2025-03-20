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
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(202429),
          ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: const Expanded(
                  child: Image(
                    //consumir da api
                    image: AssetImage('assets/images/creatures.png'),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const Column(
                children: [
                  //consumir da api
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
