import 'package:dokan_demo/presentation/homePage/widgets/home_body.dart';
import 'package:dokan_demo/presentation/profilePage/profile_page.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_floating_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 2,
    vsync: this,
  );
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // ignore: prefer_const_literals_to_create_immutables
      body: Stack(
        children: [
          TabBarView(
            controller: tabController,
            children: const [
              HomeBody(),
              // LoginPage(),
              // SignUpPage(),
              ProfilePage(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomBNBar(
              onTap1: () => setState(() => tabController.animateTo(0)),
              onTap2: () => setState(() => tabController.animateTo(1)),
              onTap3: () => setState(() => tabController.animateTo(2)),
              onTap4: () => setState(() => tabController.animateTo(3)),
              currentIndex: tabController.index,
            ),
          ),
        ],
      ),
    );
  }
}
