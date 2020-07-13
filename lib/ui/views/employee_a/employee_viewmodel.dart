import 'package:sadad/app/locator.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:sadad/services/Api.dart';
import 'package:stacked/stacked.dart';

class EmployeeViewModel extends FutureViewModel<List<Employee>> {
  EmployeeViewModel();

  @override
  Future<List<Employee>> futureToRun() => locator<Api>().getEmployees();
}
