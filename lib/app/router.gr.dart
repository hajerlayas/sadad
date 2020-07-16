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
import 'package:sadad/ui/views/homeView/home_view.dart';

class Routes {
  static const String homeView = '/';
  static const String walletView = '/wallet-view';
  static const String processingView = '/processing-view';
  static const String employeeView = '/employee-view';
  static const String profileView = '/profile-view';
  static const String homEView = '/hom-eView';
  static const all = <String>{
    homeView,
    walletView,
    processingView,
    employeeView,
    profileView,
    homEView,
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
    RouteDef(Routes.homEView, page: HomEView),
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
      var args = data.getArgs<EmployeeViewArguments>(
          orElse: () => EmployeeViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmployeeView(key: args.key),
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
    HomEView: (RouteData data) {
      var args =
          data.getArgs<HomEViewArguments>(orElse: () => HomEViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomEView(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//EmployeeView arguments holder class
class EmployeeViewArguments {
  final Key key;
  EmployeeViewArguments({this.key});
}

//ProfileView arguments holder class
class ProfileViewArguments {
  final Key key;
  final Employee employee;
  ProfileViewArguments({this.key, this.employee});
}

//HomEView arguments holder class
class HomEViewArguments {
  final Key key;
  HomEViewArguments({this.key});
}
