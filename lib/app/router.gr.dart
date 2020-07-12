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

class Routes {
  static const String homeView = '/';
  static const String walletView = '/wallet-view';
  static const String processingView = '/processing-view';
  static const all = <String>{
    homeView,
    walletView,
    processingView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.walletView, page: WalletView),
    RouteDef(Routes.processingView, page: ProcessingView),
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
  };
}
