// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tcc/globals.dart' as globals;

Widget floatingButton(context) {
  return FloatingActionButton(
    backgroundColor: globals.primary,
    onPressed: () {
      Navigator.pushNamed(context, 'cart');
    },

    child: const Icon(
      Icons.shopping_cart_outlined,
      color: Colors.white,
    ),
  );
}