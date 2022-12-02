import 'package:flutter/material.dart';
import 'package:pasanglagi/pages/home/widgets/carousel.dart';
import 'package:pasanglagi/pages/home/widgets/fitur_widget.dart';
import 'package:pasanglagi/pages/home/widgets/progress_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeCarousel(),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Progres Projek",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ProgressProjek(),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Fitur",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Text(
                "All In One",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Text(
                "Membantu merealisasikan rumah impian anda hanya dengan satu aplikasi",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
             Container(
               padding: const EdgeInsets.all(16),
               height:250,
               child: DaftarFitur(),
             )
             //DaftarFitur(),
          ],
        ),
      ),
    );
  }
}
