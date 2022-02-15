import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'widgets.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      builder: (context, child) {
        return Column(
          children: [
            Expanded(
              child: child!,
            ),
            Builder(
              builder: (context) {
                return const FixedAppBottomBar();
              },
            ),
          ],
        );
      },
    );
  }
}
