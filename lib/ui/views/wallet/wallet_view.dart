import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadad/ui/views/wallet/wallet_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../../constents.dart';

class WalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: new Stack(
          children: <Widget>[
            Container(
              child: Image.asset('images/background.png'),
              color: Colors.grey.shade100,
            ),
            Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(90),
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
                      'بطاقاتك',
                      style: TextStyle(fontFamily: 'CairoRegular',
                        color: Colors.grey,),
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
                              height: 300.0,
                              width: 200.0,
                              decoration: kDesign.copyWith(
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 290.0,
                              width: 250.0,
                              decoration: kDesign.copyWith(color: Colors.grey),
                            ),
                          ),
                          GestureDetector(
                            onTap: model.goToProcessing,
                            child: Center(
                              child: Container(
                                height: 280.0,
                                width: 300.0,
                                decoration: kDesign.copyWith(
                                  color: Colors.white,
                                ),
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
                            top: 30,
                            right: 29,
                            child: Image(
                              image: AssetImage('images/Subtraction 1.png'),
                              height: 200,
                            ),
                          ),
                          Positioned(
                            top: 120,
                            right: 29,
                            child: Image(
                              image: AssetImage('images/Subtraction 2.png'),
                              height: 150,
                            ),
                          ),
                          Positioned(
                              left: 45,
                              bottom: 60,
                              child: Text(
                                '100,000,000 LYD',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'WorkSans'),
                              )),
                          Positioned(
                              left: 45,
                              bottom: 35,
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
                    SizedBox(height: 10,),
                    Column(
                      children: <Widget>[
                        MyContainer(newicon: 'images/7 Eleven.png', serviceText: 'Shopping',date: '05/06/2020',payment: '-85',paymentColor: Colors.red,),
                        SizedBox(height: 10,),
                        MyContainer(newicon: 'images/Amazon.png', serviceText: 'Shopping',date: '15/05/2020',payment: '-55',paymentColor: Colors.red,),
                        SizedBox(height: 10,),
                        MyContainer(newicon: 'images/Target.png', serviceText: 'Salary/Bonus',date: '25/04/2020',payment: '+400',paymentColor: Colors.green,)
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
      viewModelBuilder: () => WalletViewModel(),
    );
  }
}

class MyContainer extends StatelessWidget {

  MyContainer({@required this.newicon,@required  this.date ,@required  this.payment,@required  this.serviceText, @required this.paymentColor});

 final String newicon ;
 final String serviceText;
 final String date;
 final String payment;
 final Color paymentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDesign.copyWith(
        color: Colors.white,
      ),
      height: 50,
      width: 300,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 14,
              left: 7,
              child: Container(child: Image(
                image: AssetImage(newicon),
              ))),
          SizedBox(
            width: 20,
          ),
          Positioned(
            left: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    serviceText,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'WorkSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 3, bottom: 5),
                  child: Text(
                    date,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'WorkSans'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 14,
            right: 15,
            child: Text(
              payment,
              style: TextStyle(
                  fontSize: 18,
                  color: paymentColor,
                  fontFamily: 'WorkSans'),
            ),
          )
        ],
      ),
    );
  }
}
