import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'employee_viewmodel.dart';

class EmployeeView extends StatelessWidget {
  const EmployeeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : !model.hasError
                ? ListView.builder(
                    itemBuilder: (context, index) => GestureDetector(
//                      onTap: (){model.viewEmployeeInfo(index);},
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.only(left: 35),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          model.data[index].name,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    itemCount: model.data.length,
                  )
                : Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      model.error.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
      ),
      viewModelBuilder: () => EmployeeViewModel(),
    );
  }
}
