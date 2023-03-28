import 'package:flutter/material.dart';
import 'package:spotify/screen/Home/home.dart';
import 'package:spotify/screen/library_screen/view/libray.dart';
import 'package:spotify/screen/premimum_screen/view/premimum.dart';
import 'package:spotify/screen/search_screen/view/Search_screen.dart';

class HomeScrenProvider extends ChangeNotifier{
  List Screens = [
    Home(),
    Search(),
    Libray(),
    Premimum(),
  ];
  int i=0;

  void ChangeScreen(int value){
    i = value;
    print(i);
    notifyListeners();
  }
}