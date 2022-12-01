import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pasanglagi/pages/auth/login_screen.dart';
import 'package:pasanglagi/pages/auth/welcome_screen.dart';
import 'package:pasanglagi/pages/home/home_screen.dart';

import 'data/local/session/user_session.dart';
import 'data/model/user.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  // Oh my, don't they hate to see us try?
  // Come on, say what you think, it won't mean a thing.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      home: FutureBuilder<User?>(
        future: UserSessions.getSessions(),
        builder: (context, snapshot) { //check if there's session saved or not
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return WelcomeScreen();
          }
        },
      ),
    );
  }
}
