import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Image.asset('assets/logo/pasanglagi.png'),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            border: Border.all(color: Colors.black)
          ),
          margin: EdgeInsets.only(bottom: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(child: Image(image: AssetImage('assets/logo/navbar/beranda.png'))),
              GestureDetector(child: Image(image: AssetImage('assets/logo/navbar/menu.png'))),
              GestureDetector(child: Image(image: AssetImage('assets/logo/navbar/projek.png'))),
              GestureDetector(child: Image(image: AssetImage('assets/logo/navbar/pesan.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
