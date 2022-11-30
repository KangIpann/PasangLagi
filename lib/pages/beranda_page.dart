import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pasanglagi/pages/menu_page.dart';
import 'package:pasanglagi/pages/pesan_page.dart';
import 'package:pasanglagi/pages/project_page.dart';
class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _currentIndex = 0;
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

      //Navbar!!!!!
      bottomNavigationBar:
      // BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //     icon: ImageIcon(AssetImage('assets/logo/navbar/beranda_click.png'))
      // ),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage('assets/logo/navbar/menu.png'))
      //     ),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage('assets/logo/navbar/projek.png'))
      //     ),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage('assets/logo/navbar/pesan.png'))
      //     ),
      //   ],
      //   onTap: (index){
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // )
      Container(
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
    );
  }
}
