import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/room_details_page.dart';
import 'package:project/models/booking.dart';
import 'package:project/components/room_tile.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  void navigateToRoomDetails(int index) {
    final booking = context.read<Booking>();
    final roomList = booking.roomList;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RoomDetailsPage(room: roomList[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final booking = context.read<Booking>();
    final roomList = booking.roomList;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
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
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
          Text(
            "Available Rooms",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: roomList.length,
              itemBuilder: (context, index) => RoomTile(
                room: roomList[index],
                onTap: () => navigateToRoomDetails(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
