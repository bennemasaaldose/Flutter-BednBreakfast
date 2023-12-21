import 'package:flutter/material.dart';
import 'package:project/components/button.dart';
import 'package:project/components/text_field.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  
  

  @override
  Widget build(BuildContext context) {
    void booked() {
        showDialog(
          context: context, 
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
            content: const Text("Room Successfully Booked"),
            actions: [

              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                }, 
                icon: Icon(Icons.done)),
            ],
          );
          }
        );
        }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
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
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          Center(
          child: Column(
            children: [

              Text(
                "PERSONAL DETAILS:"
                ),

              const SizedBox(height: 15),

              MyTextField(hintText: 'Name'),

              const SizedBox(height: 10),
              
              MyTextField(hintText: 'Email Address'),

              const SizedBox(height: 10),
              
              MyTextField(hintText: 'Phone Address'),

              const SizedBox(height: 30),

              Text(
                "CHECK-IN AND CHECK-OUT:"
                ),

              const SizedBox(height: 15),

              MyTextField(hintText: 'Date of Arrival'),

              const SizedBox(height: 10),
              
              MyTextField(hintText: 'Date of Departure'),

              const SizedBox(height: 30),

              Text(
                "BANK ACCOUNT DETAILS"
                ),

              const SizedBox(height: 15),

              MyTextField(hintText: 'Bank Account Number'),

              SizedBox(height: 20),
                MyButton(
                  text: "Book Room",
                  onTap: booked 
                  ),
            ]),)
            ])
            )
    ));
  }
}