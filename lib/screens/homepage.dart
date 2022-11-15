import 'package:flutter/material.dart';
import 'package:movies12/screens/bottomnavigationscreens/downloadscreen.dart';
import 'package:movies12/screens/bottomnavigationscreens/favoritescreen.dart';
import 'package:movies12/screens/bottomnavigationscreens/homescreen.dart';


class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            Home(),
            Favorite(),
            Download(),
          ],
        ),
      ),
      backgroundColor: const Color(0xff191A32),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff191A32),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,),
            label: 'Favorite',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined,),
            label: 'Download',

          ),

        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}




