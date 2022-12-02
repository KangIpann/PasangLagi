import 'package:flutter/material.dart';

import '../widgets/carousel.dart';
import '../widgets/fitur_widget.dart';
import '../widgets/progress_widget.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const Icon(Icons.menu, color: Color(0xFFB3674F)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Color(0xFFB3674F),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 32),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor("#C6A379"),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 170,
                    width: 336,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Bingung untuk mulai membangun rumah?", style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 30,
                          width: 130,
                          margin: EdgeInsets.only(top: 20,right: 170),
                          child: Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("Mulai aja dulu",textAlign: TextAlign.left, style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#C6A379")

                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 12,
                                  width: 12,
                                  child: Image(image: AssetImage("assets/logo/asset/arrow.png",)))
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 70,
                    width: 336,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: HexColor("#B3674F"))
                    ),
                    child:  Text("Tersedia jasa arsitek untuk desain rumah anda", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 70,
                    width: 336,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: HexColor("#B3674F"))
                    ),
                    child:  Text("Tersedia jasa arsitek untuk desain rumah anda", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 70,
                    width: 336,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: HexColor("#B3674F"))
                    ),
                    child:  Text("Tersedia jasa arsitek untuk desain rumah anda", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 70,
                    width: 336,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: HexColor("#B3674F"))
                    ),
                    child:  Text("Tersedia jasa arsitek untuk desain rumah anda", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
