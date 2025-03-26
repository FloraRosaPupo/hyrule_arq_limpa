import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/card_categorys.dart';
import 'package:hyrule/utils/consts/categorys.dart';

class Categorys extends StatelessWidget {
  const Categorys({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20, //spacing é a distância entre os botões
              runSpacing:
                  20, //runSpacing é a distância entre as linhas de botões

              children: categories.entries
                  .map((e) => CardCategorys(
                        category: e.key,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
