import 'package:flutter/material.dart';

class Splsh_Screen extends StatefulWidget {
  const Splsh_Screen({Key? key}) : super(key: key);

  @override
  State<Splsh_Screen> createState() => _Splsh_ScreenState();
}

class _Splsh_ScreenState extends State<Splsh_Screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: 170,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/spotify1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
