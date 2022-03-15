import 'package:flutter/material.dart';
import 'package:flutter_application_3/sreens/login.dart';
import 'package:flutter_application_3/sreens/users_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //AuthorizationPage()
      home: UserTable(),
    );
  }
}

