import 'package:flutter/material.dart';
import 'package:project/components/button.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('lib/images/Page2.jpg'),
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
                    "Elegance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    " in Every Detail",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Our meticulously designed bedroom is a sanctuary of sophistication. From the carefully chosen color palette to the sumptuous bed linens, e very detail has been thoughtfully curated to ensure your comfort and delight.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: "Book Room",
                    onTap: () {
                      Navigator.pushNamed(context, '/roompage');
                    },
                  )
                ],
              ),
            ))));
  }
}
