import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/card_categorys.dart';

class Categorys extends StatelessWidget {
  const Categorys({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20, //spacing é a distância entre os botões
              runSpacing:
                  20, //runSpacing é a distância entre as linhas de botões
              children: [
                CardCategorys(
                    image:
                        Image(image: AssetImage('assets/images/creatures.png')),
                    text: 'Creatures'),
                CardCategorys(
                    image:
                        Image(image: AssetImage('assets/images/monsters.png')),
                    text: 'Monsters'),
                CardCategorys(
                    image:
                        Image(image: AssetImage('assets/images/materials.png')),
                    text: 'Materials'),
                CardCategorys(
                    image:
                        Image(image: AssetImage('assets/images/equipment.png')),
                    text: 'Equipment'),
                CardCategorys(
                    image:
                        Image(image: AssetImage('assets/images/treasure.png')),
                    text: 'Treasure'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
