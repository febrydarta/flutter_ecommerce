import 'package:flutter/material.dart';
import '../main_menu/main_menu.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void delayed(BuildContext context){ //membuat function delayed untuk dipanggil dilain
    //jeda 3 detik
    Future.delayed(Duration(seconds: 3),() {
      //setelah 3 detik, eksekusikan perintah disini
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => Mainmenu()), (
          route) => false);
    });
  }


    @override
    Widget build(BuildContext context) {
    delayed(context); //function delayed
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/logo1.png",
                width: 200,
                height: 200,
              ),

              //loading
              CircularProgressIndicator(),

            ],
          ),
        ),
      );
    }
}