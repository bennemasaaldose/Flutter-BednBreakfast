import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/room.dart';

class RoomTile extends StatelessWidget {
  final Room room;
  final void Function()? onTap;

  const RoomTile({
    super.key,
    required this.room,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 50),
        height: 800,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              room.imagePath,
              height: 200,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[800]),
                SizedBox(width: 10),
                Text(room.rating, style: TextStyle(fontSize:15, color: Colors.grey)),
              ],
            ),
            Text(
              room.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 30),
              ),
            SizedBox(height: 20),
            Text('No. of people: ' + room.people, style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: Colors.grey[700])),
            SizedBox(height: 15),
            Text('Area: ' + room.area, style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: Colors.grey[700])),
            SizedBox(height: 15),
            Text('INR ' + room.price, style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: Colors.grey[700])),

                  


            

          ]
        ),
      )
    );
  }
}
