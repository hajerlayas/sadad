import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constents.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/clear_background.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Flexible(
                        child: Icon(
                          Icons.fingerprint,
                          size: 70.0,
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'CairoSemiBold'
                          ),
                          decoration: kInuptDecoration.copyWith(
                            prefixIcon: Icon(Icons.face),
                            labelText: 'اسم المستخدم',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          obscureText: true,
                          textAlign: TextAlign.right,
                          decoration: kInuptDecoration.copyWith(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'الرمز السري',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: MaterialButton(
                          onPressed: () {
                            model.Login();
                          },
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CairoRegular'),
                          ),
                          color: Colors.black,
                          height: 50.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: model.forgetPassword(),
                          child: Text(
                            ' هل نسيت كلمه المرور ؟',
                            style: TextStyle(
                              fontFamily: 'CairoRegular',
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
