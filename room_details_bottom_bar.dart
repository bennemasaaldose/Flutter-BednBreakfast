import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/components/button.dart';
import '../models/room.dart';

class RoomDetailsBottomBar extends StatefulWidget {
  final Room room;
  const RoomDetailsBottomBar({super.key, required this.room});
  
  @override
  State<RoomDetailsBottomBar> createState() => _RoomDetailsBottomBarState();
}

class _RoomDetailsBottomBarState extends State<RoomDetailsBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, left:20, right:20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 25,
                    ),

                    const SizedBox(width: 10),
                    
                    Text(
                      widget.room.rating,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                  ),
                  Text(
                    widget.room.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  SizedBox(height: 5),
                  
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  const SizedBox(height: 10),

                  Text(
                    widget.room.desc,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height:2,
                    ),),
                
                
                Container(
                  color: Color(0xFFEDF2F6),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "INR"+widget.room.price,
                        style:TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                      ),
                      MyButton(
                        text: "Book Room",
                        onTap: () {
                          Navigator.pushNamed(context, '/bookingpage');
                        },
                        )
                    ])
                  )

              ],
            ), 
            ),
        ],
      ),
    );
  }
}