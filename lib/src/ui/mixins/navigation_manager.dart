import 'package:flutter/widgets.dart';

import '../routes/routes.dart';

mixin NavigationManager on Widget {
  void handleNavigaton(Stream<String?> stream, {bool clear = false}) {
    stream.listen((route) {
      if(route != null && route.isNotEmpty) {
        if(clear) {
          RouterNavigator.navigateAndClear(route);
        } else {
          RouterNavigator.navigateTo(route);
        }
      }
    });
  }
}
