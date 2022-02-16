import '../../ui/view_models/view_models.dart';
import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel implements IHomeViewModel {
  @override
  void showRecentActivities() {
    navigateTo = '/activities';
  }

  @override
  void showDirects() {
    navigateTo = '/directs';
  }
}
