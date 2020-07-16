

import 'package:sadad/app/locator.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:sadad/services/Api.dart';
import 'package:stacked/stacked.dart';

class EmployeeInfoViewModel extends FutureViewModel<Employee>{

  int employeeId;
  EmployeeInfoViewModel(this.employeeId);

  @override
  Future<Employee> futureToRun() => locator<Api>().getEmployeeInfo(employeeId);


}