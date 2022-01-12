import 'package:dokan_demo/presentation/design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

SnackBar customSnackBar(String text) {
  return SnackBar(
    backgroundColor: Coolors.kBottomSheetButtonColor,
    content: Html(data: text),
  );
}
