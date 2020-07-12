import 'package:flutter/material.dart';
import 'package:sadad/ui/views/processing/processing_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../../constents.dart';

class ProcessingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProcessingViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: new Stack(
          children: <Widget>[
            Container(
              child: Image.asset('images/background.png'),
              color: Colors.black,
            ),
            Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(110),
                  child: AppBar(
                    actions: <Widget>[
                      PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) {
                          return {'logout', 'settings'}.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      )
                    ],
                    title: Text(
                      'جاري سحب القيمه',
                      style: TextStyle(
                        fontFamily: 'CairoRegular',
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                ),
                backgroundColor: Colors.transparent,
                body: Column(
                  children: <Widget>[
                    Hero(
                      tag: 'stack',
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 330.0,
                              width: 300.0,
                              decoration: kDesign.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Image(
                              image: AssetImage('images/Mask Group 1.png'),
                              height: 80,
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 29,
                            child: Image(
                              image: AssetImage('images/Subtraction 1.png'),
                              height: 260,
                            ),
                          ),
                          Positioned(
                              left: 45,
                              bottom: 50,
                              child: Text(
                                '100,000,000 LYD',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'WorkSans'),
                              )),
                          Positioned(
                              left: 45,
                              bottom: 25,
                              child: Text(
                                '**** 3867',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'WorkSans',
                                    color: Colors.grey),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 167, ),
                      child: Text(
                        'رصيدك في سداد',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'CairoRegular',
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      viewModelBuilder: () => ProcessingViewModel(),
    );
  }
}
