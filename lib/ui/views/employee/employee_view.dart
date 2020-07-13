import 'package:flutter/material.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:stacked/stacked.dart';

import 'employee_view_model.dart';

EmployeeViewModel employeeViewModel = EmployeeViewModel();

class EmployeeView extends StatelessWidget {

  List<EmployeeIdWidget> employeesList = [];


  List<Widget> Employees ( var employees){

    for( var employee in employees ){

      final empoyeeId = employee.data['id'];


      final employeesWidget = EmployeeIdWidget(id: empoyeeId,);
      employeesList.add(employeesWidget);
      return employeesList;
    }

  }


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title:  Text('Employees'),
            backgroundColor: Colors.purple.shade500,
          ),
          backgroundColor: Colors.purple.shade200,
          body: SafeArea(
            child: FutureBuilder<List<Employee>>(
              future: model.getEmployees()  ,// a previously-obtained Future<String> or null
              builder: (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
                return Container(
                  child: Center(
                    child: Column(
                      children: Employees(model.getEmployees())
                    ),
                  ),
                );
              }
            ),
          ),
        ),
        viewModelBuilder: () => EmployeeViewModel());
  }
}

class EmployeeIdWidget extends StatelessWidget {
  final id;
  EmployeeIdWidget ({this.id});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        color:  Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            id,
            style: TextStyle(
                color: Colors.purple.shade800,
                fontSize: 15.0,
            fontFamily: 'WorkSans'),
          ),
        ),
      ),
    );
  }
}
