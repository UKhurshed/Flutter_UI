import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawerScrimColor: Colors.black,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
                width: 100,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 30,
              ),
              // Text('Loading', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, color: Colors.white),)
              CircularProgressIndicator(
                  backgroundColor: Colors.white, strokeWidth: 3)
            ],
          ),

          // child: Text(
          //   'Splash Screen',
          //   style: TextStyle(fontSize: 32),
          // ),
        ),
      ),
    );
  }
}
