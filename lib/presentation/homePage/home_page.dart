import 'package:dokan_demo/presentation/blank/empty_scaffold.dart';
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
    length: 4,
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        key: UniqueKey(),
        fit: StackFit.passthrough,
        children: [
          TabBarView(
            key: UniqueKey(),
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              const HomeBody(),
              EmptyScaffold(
                key: UniqueKey(),
              ),
              EmptyScaffold(
                key: UniqueKey(),
              ),
              const ProfilePage(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomBNBar(
              key: UniqueKey(),
              currentIndex: tabController.index,
              onTap1: () => setState(() => tabController.animateTo(0)),
              onTap2: () => setState(() => tabController.animateTo(1)),
              onTap3: () => setState(() => tabController.animateTo(2)),
              onTap4: () => setState(() => tabController.animateTo(3)),
            ),
          ),
        ],
      ),
    );
  }
}
