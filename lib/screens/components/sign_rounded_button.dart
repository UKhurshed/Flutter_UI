import 'package:flutter/material.dart';
import 'package:flutter_ui/components/home.dart';
import 'package:flutter_ui/screens/SignUp/signup_screen.dart';

class SignRoundedButton extends StatelessWidget {
  final String signTxt;
  const SignRoundedButton({
    Key key,
    this.signTxt,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width * 0.65,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: Colors.blue[700],
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Home();
              },
            ),
            );
          },
          child: Align(
            child: Text(signTxt, style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}