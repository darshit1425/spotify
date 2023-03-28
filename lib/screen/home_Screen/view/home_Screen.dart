import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/screen/Home/home.dart';
import 'package:spotify/screen/home_Screen/provider/HomeScreenProvider.dart';
import 'package:spotify/screen/library_screen/view/libray.dart';
import 'package:spotify/screen/premimum_screen/view/premimum.dart';
import 'package:spotify/screen/search_screen/view/Search_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeScrenProvider? homeScrenProvidertrue;
  HomeScrenProvider? homeScrenProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeScrenProviderfalse =
        Provider.of<HomeScrenProvider>(context, listen: false);
    homeScrenProvidertrue =
        Provider.of<HomeScrenProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: homeScrenProvidertrue!.Screens[homeScrenProvidertrue!.i],

        // bottomNavigationBar: BottomNavyBar(
        //   selectedIndex: homeScrenProviderfalse!.i,
        //   showElevation: true, // use this to remove appBar's elevation
        //   onItemSelected: (index) => setState(() {
        //     homeScrenProviderfalse!.i = index;
        //     homeScrenProviderfalse!.ChangeScreen.animateToPage(index,
        //         duration: Duration(milliseconds: 300), curve: Curves.ease);
        //   }),
        //   items: [
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.home),
        //       title: Text('Home'),
        //       activeColor: Colors.red,
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.search),
        //         title: Text('Search'),
        //         activeColor: Colors.purpleAccent
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.library_music_outlined),
        //         title: Text('Library'),
        //         activeColor: Colors.pink
        //     ),
        //     BottomNavyBarItem(
        //         icon: Icon(Icons.workspace_premium),
        //         title: Text('premium'),
        //         activeColor: Colors.blue
        //     ),
        //   ],
        // )
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            homeScrenProviderfalse!.ChangeScreen(value);
          },
          currentIndex: homeScrenProvidertrue!.i,
          unselectedItemColor: Colors.greenAccent,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedLabelStyle: TextStyle(color: Colors.black),
          backgroundColor: Colors.black,
          selectedItemColor: Colors.greenAccent.shade700,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined), label: "library"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.workspace_premium), label: "premium"),
          ],
        ),
      ),
    );
  }
}
