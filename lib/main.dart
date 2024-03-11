import 'package:chat_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'Test/LoginScreen_Test.dart';

void main() {
  ZIMKit().init(
      appID: Utils.id,
      appSign: Utils.SignIn
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
