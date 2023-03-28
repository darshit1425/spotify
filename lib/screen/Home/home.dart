import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Home_provider? ProviderT;
  Home_provider? ProviderF;

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Home_provider>(context, listen: true);
    ProviderF = Provider.of<Home_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Icon(Icons.notification_important_rounded),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.watch_later_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.settings_sharp),
            SizedBox(
              width: 10,
            ),
          ],
          title: Text(
            "Good afternoon",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Your top mixes",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500,fontSize: 22),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'routeName');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 175,
                  width: double.infinity,
                  child: ListView.builder(
                      itemBuilder: (context, index) => Apps(
                            ProviderF!.MusicImage1[index],
                            ProviderF!.MusicName1[index],
                          ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Made For Darshit",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 22,

                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                    itemBuilder: (context, index) => Apps(
                        ProviderF!.MusicImage2[index],
                        ProviderF!.MusicName2[index]),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recently played",
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 22,

                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                    itemBuilder: (context, index) => Apps(
                          ProviderF!.MusicImage3[index],
                          ProviderF!.MusicName3[index],
                        ),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Apps(String imgPath, String MusicName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("${imgPath}", fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "${MusicName}",
              style: GoogleFonts.lato(
                  fontSize: 12, color: Colors.white, letterSpacing: 0),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Lofi song",
                  style: GoogleFonts.lato(fontSize: 10, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Text(
// "Your top mixes",
// style: TextStyle(
// color: Colors.white,
// fontSize: 22,
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
