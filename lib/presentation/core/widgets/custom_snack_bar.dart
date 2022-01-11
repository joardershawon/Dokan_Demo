import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

SnackBar customSnackBar(String text) {
  return SnackBar(
    backgroundColor: Colors.white,
    content: Html(data: text),
  );
}
