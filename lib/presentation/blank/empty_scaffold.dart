import 'package:flutter/material.dart';

class EmptyScaffold extends StatelessWidget {
  const EmptyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('EMPTY SCAFFOLD'),
        ),
      ),
    );
  }
}
