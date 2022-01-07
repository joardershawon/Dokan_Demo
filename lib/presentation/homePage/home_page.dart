import 'package:dokan_demo/presentation/homePage/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Product List'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
