import 'package:flutter/material.dart';
import 'package:project/pages/intro_screens/intro_page_1.dart';
import 'package:project/pages/intro_screens/intro_page_2.dart';
import 'package:project/pages/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 141, 79),
        toolbarHeight: 90,
        elevation: 0,
        title: Text(
          'Rustic Charm',
          style: GoogleFonts.dmSerifDisplay(fontSize: 50),
                  ),),
      
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _controller.previousPage(
                      duration: Duration(milliseconds: 500), 
                      curve: Curves.easeIn,
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500), 
                      curve: Curves.easeIn,
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                )
                    ]
              ),

                ),
          Container(
            alignment: Alignment(0,0.9),
            child:
              SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.white,
                  dotColor: const Color.fromARGB(134, 255, 255, 255),
                  spacing: 30,
                  dotWidth: 15,
                  dotHeight: 15,
                    ),),
          )
                
              ],
            ),
          );
  }
}