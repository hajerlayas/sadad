import 'package:flutter/material.dart';
import 'package:sadad/ui/views/employee_info/employee_info_view_model.dart';
import 'package:stacked/stacked.dart';

class EmployeeInfoView extends StatelessWidget {

  final employeeId;

  const EmployeeInfoView({Key key, this.employeeId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeInfoViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(
                  model.data.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'CairoSemiBold'),
                ),
                backgroundColor: Colors.purple.shade700,
              ),
              backgroundColor: Colors.purple.shade200,
              body: model.isBusy
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SafeArea(
                      child: Center(
                      child: Container(
                        width: 300,
                        height: 200,
                        decoration:  BoxDecoration(
                          borderRadius:  BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.white,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Employee\'s Name ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'CairoSemiBold',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  model.data.name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'CairoRegular',
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Employee\'s Salary ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'CairoSemiBold',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  model.data.salary,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'CairoRegular',
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Employee\'s age ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'CairoSemiBold',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  model.data.age,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'CairoRegular',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
            ),
        viewModelBuilder: () => EmployeeInfoViewModel(employeeId));
  }
}
