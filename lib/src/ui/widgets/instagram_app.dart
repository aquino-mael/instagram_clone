import 'package:flutter/material.dart';

import '../../presentation/view_models/view_models.dart';
import '../routes/routes.dart';
import '../screens/screens.dart';
import 'widgets.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RouterNavigator.navigatorKey,
      initialRoute: HomeScreen.screenName,
      routes: {
        HomeScreen.screenName: (context) => HomeScreen(
          viewModel: HomeViewModel(),
        ),
      },
      builder: (context, child) {
        return Column(
          children: [
            Expanded(
              child: child!,
            ),
            const FixedAppBottomBar(),
          ],
        );
      },
    );
  }
}
