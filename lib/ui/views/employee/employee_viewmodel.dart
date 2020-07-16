import 'package:auto_route/auto_route.dart';
import 'package:sadad/app/locator.dart';
import 'package:sadad/app/router.gr.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:sadad/services/Api.dart';
import 'package:sadad/ui/views/employee_info/employee_info_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmployeeViewModel extends FutureViewModel<List<Employee>> {
  EmployeeViewModel();

  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Future<List<Employee>> futureToRun() => locator<Api>().getEmployees();


//  void viewEmployeeInfo( int id) async{
//    await _navigationService.navigateTo(Routes.employeeInfoView,
//        arguments: EmployeeInfoView(
//          employeeId: id ,
//        )
//    );
//  }
}
