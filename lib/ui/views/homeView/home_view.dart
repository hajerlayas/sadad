import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sadad/ui/views/employee_a/employee_view.dart';
import 'package:sadad/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomEView extends StatelessWidget {
  const HomEView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
            duration: Duration(microseconds: 300),
            reverse: model.reverse,
            transitionBuilder: (Widget child, Animation<double> animation , Animation<double>  secondaryAnimation){
              return SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
              );
            },
            child: getViewForIndex(model.currentIndex)),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              title: Text('Posts'),
              icon: Icon(Icons.art_track)
            ),
            BottomNavigationBarItem(
                title: Text('ToDos'),
                icon: Icon(Icons.list)
            )
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index){
    switch(index){
      case 0 :
        return HomeView();
      case 1 :
        return EmployeeView();
      default:
        return HomeView();
    }
  }



}
