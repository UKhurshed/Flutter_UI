import 'package:flutter/material.dart';
import 'package:flutter_ui/components/home.dart';

class SignInRoundedButton extends StatelessWidget {
  const SignInRoundedButton({
    Key key,
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
        child: FlatButton(
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
          child: Text('SIGN IN', style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}