import 'package:flutter/material.dart';
import 'package:navigation_drawer_widget/page/account.dart';
import 'package:navigation_drawer_widget/page/home.dart';
import 'package:navigation_drawer_widget/page/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      initialRoute: '/',
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        Settings.routeName: (BuildContext context) => Settings(),
        Account.routeName: (BuildContext context) => Account(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
