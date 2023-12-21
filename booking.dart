import 'package:flutter/material.dart';
import 'room.dart';

class Booking extends ChangeNotifier{
  final List<Room> _roomList = [
    Room(
      name: "Single", 
      price: "5000", 
      imagePath: "lib/images/single.jpg", 
      people: "2",
      area: "300 sq ft",
      rating: "4.7",
      desc: """- Designed for two adults
- Queen size bed
- En-suite bathroom
- TV, Mini-fridge, Coffee-maker
- Free Wi-Fi
            """),

    Room(
      name: "Double", 
      price: "10000", 
      imagePath: "lib/images/Page2.jpg", 
      people: "2 + 2 children",
      area: "350 sq ft",
      rating: "4.8",
      desc: """- Designed for 2 adults and 2 children
- Two queen size beds
- En-Suite bathrooms
- Fully equipped kitchen
- Private balcony
- Private pool
            """),

    Room(
      name: "Deluxe", 
      price: "20000", 
      imagePath: "lib/images/suite.jpg", 
      people: "2",
      area: "500 sq ft",
      rating: "5.0",
      desc: """- Designed for 2 adults
- King size bed
- Steam room + bathroom
- TV, Mini-fridge, Coffee-maker, Mini-bar
- Free Wi-Fi
- In-Room Safe
- Concierge Service
- Dedicated Work-Space
            """),
  ];

  List<Room> _booked = [];

  List<Room> get roomList => _roomList;
  List<Room> get booked => _booked;

  void Booked(Room room) {
    _roomList.add(room);
  notifyListeners();
  }
  

}