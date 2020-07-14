import 'package:sadad/app/locator.dart';
import 'package:sadad/app/router.gr.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:sadad/services/Api.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmployeeViewModel extends FutureViewModel<List<Employee>> {
  final NavigationService _navigationService = locator<NavigationService>();

  EmployeeViewModel();

  @override
  Future<List<Employee>> futureToRun() => locator<Api>().getEmployees();

  Future navigateToProfile(Employee employee) async {
    await _navigationService.navigateTo(Routes.profileView,
        arguments: ProfileViewArguments(employee: employee));
  }
}
