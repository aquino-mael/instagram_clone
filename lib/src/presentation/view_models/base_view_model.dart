import '../../ui/view_models/view_models.dart';
import '../mixins/mixins.dart';

class BaseViewModel extends IBaseViewModel with NavigationManager {
  @override
  Stream<String?> get streamRoute => routeToStream;
}
