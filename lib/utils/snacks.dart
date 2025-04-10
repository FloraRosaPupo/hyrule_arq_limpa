import 'package:flutter/material.dart';

class AppSnackBar {
  static void showSnackBar(String mensagem, BuildContext context) {
    // Exibe um SnackBar com a mensagem fornecida
    final snackBar = SnackBar(
        content: Text(mensagem),
        backgroundColor: Colors.teal,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
