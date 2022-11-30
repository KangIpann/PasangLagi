import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pasanglagi/pages/pesan_page.dart';
import 'package:pasanglagi/pages/project_page.dart';

import 'beranda_page.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F5F5"),
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      //Body
      body: Center(
        child: Image.asset('assets/logo/pasanglagi.png'),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            border: Border.all(color: Colors.black,width: 0.1)
        ),
        padding: EdgeInsets.only(bottom: 24, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Beranda();
                  }));
                },
                child: Image(
                    image: AssetImage('assets/logo/navbar/beranda_click.png')
                )
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Menu();
                  }));
                },
                child: Image(image: AssetImage('assets/logo/navbar/menu.png')
                )),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Project();
                  }));
                },
                child: Image(image: AssetImage('assets/logo/navbar/projek.png')
                )),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Pesan();
                  }));
                },
                child: Image(image: AssetImage('assets/logo/navbar/pesan.png')
                )),
          ],
        ),
      ),
    );;
  }
}
