import 'package:flutter/material.dart';
import 'package:sadad/app/router.gr.dart';
import 'package:sadad/ui/views/employee/employee_view.dart';
import 'package:sadad/ui/views/employee_info/employee_info_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //initialRoute: Routes.homeView,
      initialRoute: Routes.homEView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
