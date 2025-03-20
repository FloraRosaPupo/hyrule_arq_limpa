import 'package:flutter/material.dart';

class CardCategorys extends StatefulWidget {
  final Image image;
  final String text;

  const CardCategorys({super.key, required this.image, required this.text});

  @override
  State<CardCategorys> createState() => _CardCategorysState();
}

class _CardCategorysState extends State<CardCategorys> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.35,
            child: widget.image,
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
          Text(widget.text,
              style: const TextStyle(
                  fontSize: 20, color: Color.fromRGBO(0, 73, 125, 1))),
        ],
      ),
    );
  }
}
