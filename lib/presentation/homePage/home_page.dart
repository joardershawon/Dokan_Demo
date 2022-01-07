import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_floating_button.dart';
import '../router/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBarBuilder: (context, tabsRouter) => AppBar(
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
      routes: const [
        HomeBodyRouter(),
        ProfileRouter(),
        LoginPageRouter(),
        SignUpPageRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return CustomBNBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}
