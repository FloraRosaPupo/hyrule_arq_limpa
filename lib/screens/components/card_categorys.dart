import 'package:flutter/material.dart';
import 'package:hyrule/screens/creatures.dart';
import 'package:hyrule/utils/consts/categorys.dart';

class CardCategorys extends StatefulWidget {
  final String category;

  const CardCategorys({super.key, required this.category});

  @override
  State<CardCategorys> createState() => _CardCategorysState();
}

class _CardCategorysState extends State<CardCategorys> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Creatures(category: widget.category)));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset('$imagePath${widget.category}.png'),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromRGBO(0, 73, 125, 1)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 73, 125, 1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(categories[widget.category]!,
                style: const TextStyle(
                    fontSize: 20, color: Color.fromRGBO(0, 73, 125, 1))),
          ],
        ),
      ),
    );
  }
}
