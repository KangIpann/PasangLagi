import 'package:flutter/material.dart';

class DaftarFitur extends StatelessWidget {
  const DaftarFitur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      scrollDirection: Axis.vertical,
      children: [
        fiturItem(imagePath: 'assets/logo/fitur/aio.png',),
        fiturItem(imagePath: 'assets/logo/fitur/arsitek.png',),
        fiturItem(imagePath: 'assets/logo/fitur/kalkulasi.png',),
        fiturItem(imagePath: 'assets/logo/fitur/material.png',),
        fiturItem(imagePath: 'assets/logo/fitur/konstruksi.png',),
        fiturItem(imagePath: 'assets/logo/fitur/konsul.png',),
      ],
    );
  }
}

class fiturItem extends StatelessWidget {
  var route;
  final String imagePath;
  fiturItem({Key? key, required this.imagePath, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //handling when the item is clicked
        if (route != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        }
      },

      child: Image.asset(imagePath),
    );
  }
}
