// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sadad/ui/views/home/home_view.dart';
import 'package:sadad/ui/views/wallet/wallet_view.dart';
import 'package:sadad/ui/views/processing/processing_view.dart';
import 'package:sadad/ui/views/employee/employee_view.dart';
import 'package:sadad/ui/views/profile/profile_view.dart';
import 'package:sadad/datamodels/employee.dart';

class Routes {
  static const String homeView = '/';
  static const String walletView = '/wallet-view';
  static const String processingView = '/processing-view';
  static const String employeeView = '/employee-view';
  static const String profileView = '/profile-view';
  static const all = <String>{
    homeView,
    walletView,
    processingView,
    employeeView,
    profileView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.walletView, page: WalletView),
    RouteDef(Routes.processingView, page: ProcessingView),
    RouteDef(Routes.employeeView, page: EmployeeView),
    RouteDef(Routes.profileView, page: ProfileView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    WalletView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WalletView(),
        settings: data,
      );
    },
    ProcessingView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProcessingView(),
        settings: data,
      );
    },
    EmployeeView: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmployeeView(),
        settings: data,
      );
    },
    ProfileView: (RouteData data) {
      var args = data.getArgs<ProfileViewArguments>(
          orElse: () => ProfileViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            ProfileView(key: args.key, employee: args.employee),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ProfileView arguments holder class
class ProfileViewArguments {
  final Key key;
  final Employee employee;
  ProfileViewArguments({this.key, this.employee});
}
