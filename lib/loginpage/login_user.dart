import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('assets/logo/pasanglagi.png'),),
    );
  }
}
//
