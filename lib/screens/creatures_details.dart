import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/creatures/card_commonLocations.dart';

class CreaturesDetails extends StatelessWidget {
  const CreaturesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalhes '),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome',
                      style: const TextStyle(
                        fontFamily: 'Philosopher',
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: [
                        CardCommonlocations(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('assets/images/creatures.png'),
                      width: 320,
                      height: 220,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Descrição'),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(249, 1, 87, 158),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
