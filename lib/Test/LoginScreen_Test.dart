import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'HomeScreen_Test.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final userId = TextEditingController();
  final userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  TextFormField(controller: userId,
                    decoration: InputDecoration(
                      labelText: 'User ID',
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(controller: userName,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () async {
                    await ZIMKit().connectUser(id: userId.text,name: userName.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  }, child: Text('Login'))
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
