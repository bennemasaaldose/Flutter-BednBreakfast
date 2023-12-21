import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 141, 79), 
          borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(20),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text, 
              style: TextStyle(color: Colors.white),
            ),
  
        ],
          )
      )
    );
}
}