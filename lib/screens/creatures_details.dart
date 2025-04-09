import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entry.dart';

class CreaturesDetails extends StatelessWidget {
  final Entry entry;
  final DaoController daoController = DaoController();

  CreaturesDetails({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalhes '),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.name,
                      style: const TextStyle(
                        fontFamily: 'Philosopher',
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: entry
                            .commonLocationsConvert()
                            .map((e) => Chip(label: Text(e)))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      entry.image,
                      fit: BoxFit.fitHeight,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.error,
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(entry.description,
                        style: const TextStyle(
                          fontFamily: 'Philosopher',
                          fontSize: 16,
                        )),
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
                  child: FloatingActionButton(
                    child: const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Adiciona o item ao banco de dados
                      daoController.saveEntry(entry: entry);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Item salvo com sucesso!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
