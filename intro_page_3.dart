import 'package:flutter/material.dart';
import 'package:project/components/button.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('lib/images/Page3.jpg'),
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
                    "A Culinary",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Journey",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Step into a world of culinary wonderment, where each dish is a masterpiece crafted with precision and passion.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: "Book Reservation",
                    onTap: () {
                      Navigator.pushNamed(context, '/foodpage');
                    },
                  )
                ],
              ),
            ))));
  }
}
