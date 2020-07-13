import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:sadad/datamodels/employee.dart';

@lazySingleton
class Api {

  Future<List<Employee>> getEmployees ()async {

    var employees = List<Employee>();
    var response = await http.get('http://dummy.restapiexample.com/api/v1/employees?fbclid=IwAR22lNeNSte55F-KHdB4Fqndeb58WOqtE2swgQhUhHZGfi3-lu4bhedQNdI');
    var responseBody =json.decode(response.body) as List<dynamic>;
    for(var employee in responseBody){
      employees.add(Employee.fromJson(employee));
    }

    return employees;

}

}