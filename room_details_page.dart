import 'package:flutter/material.dart';
import 'package:project/components/room_details_app_bar.dart';
import 'package:project/components/room_details_bottom_bar.dart';
import 'package:project/models/room.dart';

class RoomDetailsPage extends StatelessWidget {
  final Room room;
  const RoomDetailsPage({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(room.imagePath),
          fit: BoxFit.cover,
          opacity: 0.7,
          )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: RoomDetailsAppBar(),
        ),
        bottomNavigationBar: RoomDetailsBottomBar(
          room: room,
        ),
      ),
    );
  }
}
