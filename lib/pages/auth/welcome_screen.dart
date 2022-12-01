import 'package:flutter/material.dart';
import 'package:pasanglagi/pages/auth/login_screen.dart';
import 'package:pasanglagi/pages/auth/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                child: Text(
                  'Selamat Datang di PasangLagi',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 100,
                child: Text(
                  'Kami membantu merealisasikan rumah impian pengguna, mulai dari desain awal hingga rumah yang siap huni secara instan hanya dengan satu aplikasi',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB3674F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return RegisterScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text('Daftar'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFFB3674F)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: Color(0xFFB3674F)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
