import 'package:dokan_demo/presentation/core/size.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Scaffold.of(context).showBottomSheet(
                  (context) => Container(
                    color: Colors.amber,
                    height: getPercentSize(40, true, context),
                  ),
                );
              },
              child: const Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ],
    );
  }
}
