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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nome'),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        CardCommonlocations(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image(image: AssetImage('assets/images/creatures.png')),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Descrição'),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF3B4858),),
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
