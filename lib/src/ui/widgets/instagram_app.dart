import 'package:flutter/material.dart';

import '../screens/screens.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
