import 'package:flutter/material.dart';

class CardCommonlocations extends StatelessWidget {
  const CardCommonlocations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
          border: Border.all(color: Colors.white),
        ),
        child: const Center(
          child: Text(
            'Nome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ));
  }
}
