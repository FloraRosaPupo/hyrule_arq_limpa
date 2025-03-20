import 'package:flutter/material.dart';

class Creatures extends StatelessWidget {
  const Creatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creatures'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
            },
          ),
        ],
         
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(),
          )),
    );
  }
}
