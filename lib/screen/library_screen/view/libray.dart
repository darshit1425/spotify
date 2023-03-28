import 'package:flutter/material.dart';

class Libray extends StatefulWidget {
  const Libray({Key? key}) : super(key: key);

  @override
  State<Libray> createState() => _LibrayState();
}

class _LibrayState extends State<Libray> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
