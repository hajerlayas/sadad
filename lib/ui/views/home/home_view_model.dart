import 'package:sadad/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sadad/app/router.gr.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void Login() async {
    await _navigationService.navigateTo(Routes.walletView);
  }

  forgetPassword() {}
}
