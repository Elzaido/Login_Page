import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:full_login_page/modules/login/phone.dart';
import 'package:full_login_page/modules/login/desktop.dart';
import 'package:full_login_page/shared/observer.dart';

void main() {
  runApp(MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) {
          if (MediaQuery.of(context).size.width <= 560) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.linear(0.75),
                ),
                child: PhoneLogin());
          } else {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.linear(1.25),
                ),
                child: DeskLogin());
          }
        }));
  }
}
