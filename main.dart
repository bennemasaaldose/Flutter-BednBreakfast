import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/onboarding_screen.dart';
import 'pages/room_page.dart';
import 'pages/booking_page.dart';
import 'pages/reservation_page.dart';
import 'package:project/models/booking.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Booking>.value(
          value:
              Booking(), // Use value to provide an existing instance of Booking
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<int>.value(
      value: 42,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
        routes: {
          '/intropage': (context) => const OnBoardingScreen(),
          '/roompage': (context) => const RoomPage(),
          '/bookingpage': (context) => const BookingPage(),
          '/reservationpage': (context) => const ReservationPage(),
          '/foodpage': (context) => const ReservationPage(),
        },
      ),
    );
  }
}
