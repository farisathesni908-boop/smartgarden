import 'package:flutter/material.dart';
import 'package:smartgardenapp/garden1.dart';
import 'package:smartgardenapp/profile.dart';

import 'package:smartgardenapp/shop.dart';

class Navebar extends StatefulWidget {
  const Navebar({super.key});

  @override
  State<Navebar> createState() => _NavebarState();
}
final screens = [Garden1(),Shop(),Profile()];


int currentIndex = 0;
class _NavebarState extends State<Navebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType
            .fixed, // Ensure fixed mode for label visibility
        selectedItemColor:  Color(0xff0C9359), // Set selected label & icon color
        unselectedItemColor: Colors.black,

        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
         
            icon: ImageIcon(
              AssetImage('assets/logo (1).png'),
              color: Colors.black,
              size: 30,
            ),
            label: 'Home',
    activeIcon:  ImageIcon(
              AssetImage('assets/logo (1).png'),
              color:  Color(0xff0C9359),
              size: 30,
            ),
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Frame 9 (1).png'),
              color: Colors.black,
              size: 30,
              
            ),
            label: 'shop',
            activeIcon:  ImageIcon(
              AssetImage('assets/Frame 9 (1).png'),
              color: Color(0xff0C9359),
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Frame 8.png'),
              color: Colors.black,
              size: 30,
            ),
            label: 'profile',
            activeIcon:  ImageIcon(
              AssetImage('assets/Frame 8.png'),
              color: Color(0xff0C9359),
              size: 30,
            ),
          ),
          
       
        ],
      ),
      body: screens[currentIndex]
      
      
    );
  }
}