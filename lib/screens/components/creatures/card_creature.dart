import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/creatures/card_commonLocations.dart';

class CardCreature extends StatefulWidget {
  const CardCreature({super.key});

  @override
  State<CardCreature> createState() => _CardCreatureState();
}

class _CardCreatureState extends State<CardCreature> {
  late bool isDelete = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(

        //setState para mudar o estado
        onTap: () => setState(() {
              //adicionar a condição
              isDelete = !isDelete;
            }),
        child: Stack(
          children: [
            Container(
              width: 330,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 37, 37, 37),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Expanded(
                            child: Image(
                              //consumir da api
                              image: AssetImage('assets/images/creatures.png'),
                              width: 100,
                              height: 200,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start   ,
                            children: [
                              //consumir da api
                              Text(
                                'Nome:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily:
                                      'assets/fonts/Philosopher-Regular.ttf',
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Descrição:',
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B4858),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Wrap(
                        children: [
                          CardCommonlocations(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 300,
              alignment: Alignment.topRight,
              child: Visibility(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.red,
                  ),
                  width: 160,
                  height: 300,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete,
                        )
                      ],
                    ),
                  ),
                ),
                visible: !isDelete, //adicionar a condição
              ),
            )
          ],
        ));
  }
}
