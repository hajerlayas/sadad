import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:sadad/datamodels/employee.dart';

@lazySingleton
class Api {
  static const endPoint = 'http://dummy.restapiexample.com';

  Future<List<Employee>> getEmployees() async {
    var employees = List<Employee>();
    var response = await http.get(
        '$endPoint/api/v1/employees?fbclid=IwAR22lNeNSte55F-KHdB4Fqndeb58WOqtE2swgQhUhHZGfi3-lu4bhedQNdI');

    var responseBody = json.decode(response.body);
    print('the data printed ${responseBody['data']}');
    for (var employee in responseBody['data']) {
      try {
        employees.add(Employee.fromJson(employee));
      } catch (e) {
        print('error $e');
      }
    }

    return employees;
  }


  Future<Employee> getEmployeeInfo(int employeeId) async {
    print(employeeId);
    var response = await http.get('$endPoint/api/v1/employee/$employeeId?fbclid=IwAR0JSscMcdHhEFf8zU-xExjrhf2lYSV6KWIJR8CiTVe_ZYzcCi_EE_yZ38I');
    var responseBody = json.decode(response.body);
    print('response ${response.statusCode}');

    return Employee.fromJson(json.decode(response.body));
  }
}
