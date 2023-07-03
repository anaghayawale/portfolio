import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/hello_button.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/social_icon_link.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //const NavBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 35, 38, 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //column 1 - for data
                  Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.topLeft,
                        //color: Colors.yellow,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NavBar(),
                              SizedBox(height: 40,),
                              HelloButton(),
                               SizedBox(height: 20,),
                              Text(
                                "I'm Anagha,",
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'Flutter Developer',
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.w600),
                              ),
                              /*Text('Im Anagha,',
                                  style: GoogleFonts.eczar(
                                      textStyle: const TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w600))),
                              Text('Flutter Developer',
                                  style: GoogleFonts.eczar(
                                      textStyle: const TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w600))),
                              */
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  SocialIcon(
                                    icon: Icons.facebook,
                                    defaultColor: Colors.black,
                                    hoverColor: Colors.pink,
                                    url: 'https://www.facebook.com/your-profile',
                                  ),
                                  SizedBox(width: 10,),
                                  SocialIcon(
                                    icon: Icons.facebook,
                                    defaultColor: Colors.black,
                                    hoverColor: Colors.pink,
                                    url: 'https://www.facebook.com/your-profile',
                                  ),
                                  SizedBox(width: 10,),
                                  SocialIcon(
                                    icon: Icons.facebook,
                                    defaultColor: Colors.black,
                                    hoverColor: Colors.pink,
                                    url: 'https://www.facebook.com/your-profile',
                                  ),
                                  SizedBox(width: 10,),
                                  SocialIcon(
                                    icon: Icons.facebook,
                                    defaultColor: Colors.black,
                                    hoverColor: Colors.pink,
                                    url: 'https://www.facebook.com/your-profile',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                  //column 2 - for image
                  Expanded(
                    flex: 4,
                    child: Container(
                      //color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 20),
                        child: Column(
                          children: [
                            Image.asset(
                              'asset/images/hp.png',
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
