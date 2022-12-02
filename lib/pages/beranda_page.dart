import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pasanglagi/common/my_colors.dart';
import 'package:pasanglagi/common/widgets/bottom_navbar.dart';
import 'package:pasanglagi/pages/home/home_screen.dart';
import 'package:pasanglagi/pages/menu_page.dart';
import 'package:pasanglagi/pages/pesan_page.dart';
import 'package:pasanglagi/pages/project_page.dart';

import 'pesan/pesan_screen.dart';
import 'project/project_screen.dart';
class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {

  int _currentIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const PesanScreen(),
    const ProjectScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F5F5"),
      // appBar: AppBar(
      //   title: const Text('Flutter Demo Home Page'),
      // ),
      //Body
      body: _widgetOptions.elementAt(_currentIndex),

      //Navbar!!!!!
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items:  [
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/logo/navbar/beranda_click.png"),
              color: _currentIndex == 0 ? MyColors.main : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/logo/navbar/pesan.png"),
              color: _currentIndex == 0 ? MyColors.main : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/logo/navbar/projek.png"),
              color: _currentIndex == 0 ? MyColors.main : Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavbar(
      //   onChange: (val) {
      //     setState(() {
      //       _currentIndex = val;
      //     });
      //   },
      //   defaultSelectedIndex: 0,
      // ),
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
      // Container(
      //   decoration: BoxDecoration(
      //       color: Colors.white70,
      //       border: Border.all(color: Colors.black,width: 0.1)
      //   ),
      //   padding: EdgeInsets.only(bottom: 24, top: 12),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       GestureDetector(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context){
      //               return Beranda();
      //             }));
      //           },
      //           child: Image(
      //               image: AssetImage('assets/logo/navbar/beranda_click.png')
      //           )
      //       ),
      //       GestureDetector(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context){
      //               return Menu();
      //             }));
      //           },
      //           child: Image(image: AssetImage('assets/logo/navbar/menu.png')
      //           )),
      //       GestureDetector(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context){
      //               return Project();
      //             }));
      //           },
      //           child: Image(image: AssetImage('assets/logo/navbar/projek.png')
      //           )),
      //       GestureDetector(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context){
      //               return Pesan();
      //             }));
      //           },
      //           child: Image(image: AssetImage('assets/logo/navbar/pesan.png')
      //           )),
      //     ],
      //   ),
      // ),
    );
  }
}
