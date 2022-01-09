import 'package:flutter/material.dart';

SnackBar customSnackBar(String text) {
  return SnackBar(
    content: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  );
}
