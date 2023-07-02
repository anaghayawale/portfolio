import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget desktopNavbar() {
    return Container(
      //color: Colors.deepOrange,
      margin: const EdgeInsets.all(35), //symmetric(horizontal: 40, vertical: 20),
      height: 70,
      child: const Row(
        children: [
          NavButton(text: 'Home'),
          SizedBox(width: 15,),
          NavButton(text: 'Skills'),
          SizedBox(width: 15,),
          NavButton(text: 'Project'),
          SizedBox(width: 15,),
          NavButton(text: 'About'),
          SizedBox(width: 15,),
          NavButton(text: 'Resume'),
        ],
      ),
    );
  }

  Widget mobileNavbar() {
    return Container(
      //color: Colors.deepPurple,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavButton(text: 'Home'),
          NavButton(text: 'Skills'),
          NavButton(text: 'Project'),
          NavButton(text: 'About'),
          NavButton(text: 'Resume'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 760;

    return isMobile ? mobileNavbar() : desktopNavbar();
  }
}
