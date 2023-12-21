import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('lib/images/Page1.jpg'),
          fit: BoxFit.cover,
        )),
        child: Material(
            color: Colors.transparent,
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 200),
                  Text(
                    " The Pinnacle",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "of Elegance",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "In the heart of an enchanting city, where dreams are woven into reality, stands a grand sanctuary of opulence. Welcome to Rustic Charm, where the ordinary transforms into the extraordinary. A symphony of indulgence and refinement, we invite you to immerse yourself in a world where every moment is an exquisite experience.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ))));
  }
}
