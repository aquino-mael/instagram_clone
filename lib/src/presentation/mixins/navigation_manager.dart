import 'dart:async';

import '../../ui/view_models/view_models.dart';

mixin NavigationManager on IBaseViewModel {
  StreamController<String?> controller = StreamController<String?>();
  set navigateTo(String? newRoute) => controller.sink.add(newRoute);
  Stream<String?> get routeToStream => controller.stream;
}
