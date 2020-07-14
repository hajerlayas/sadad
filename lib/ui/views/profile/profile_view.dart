import 'package:flutter/material.dart';
import 'package:sadad/datamodels/employee.dart';
import 'package:stacked/stacked.dart';

import '../../../constents.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  final Employee employee;

  const ProfileView({Key key, this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
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
                          style: TextStyle(fontFamily: 'CairoSemiBold'),
                          decoration: kInuptDecoration.copyWith(
                            prefixIcon: Icon(Icons.face),
                            labelText: '${employee.name}',
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
                          onPressed: () {},
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
        viewModelBuilder: () => ProfileViewModel());
  }
}
