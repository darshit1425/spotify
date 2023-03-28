import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/screen/home_Screen/provider/HomeScreenProvider.dart';
import 'package:spotify/screen/library_screen/view/libray.dart';
import 'package:spotify/screen/premimum_screen/view/premimum.dart';
import 'package:spotify/screen/search_screen/view/Search_screen.dart';

import 'screen/Home/home.dart';
import 'screen/Home/home_provider.dart';
import 'screen/home_Screen/view/home_Screen.dart';
import 'screen/splash_screen/view/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScrenProvider(),
        ),ChangeNotifierProvider(
          create: (context) => Home_provider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          '/': (context) => Splsh_Screen(),
          'home': (context) => Home_Screen(),
          '1': (context) => Home(),
          '2': (context) => Search(),
          '3': (context) => Libray(),
          '4': (context) => Premimum(),
        },
      ),
    ),
  );
}
