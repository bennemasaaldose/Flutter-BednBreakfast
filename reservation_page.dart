import 'package:flutter/material.dart';
import 'package:project/components/button.dart';
import 'package:project/components/text_field.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void reserved() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: const Text("Reservation Successfully Booked"),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                icon: Icon(Icons.done),
              ),
            ],
          );
        },
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
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              const SizedBox(height: 20),
              Text("PERSONAL DETAILS:"),

              const SizedBox(height: 20),

              MyTextField(hintText: 'Name'),

              const SizedBox(height: 10),

              MyTextField(hintText: 'Email Address'),

              const SizedBox(height: 10),

              MyTextField(hintText: 'Phone Address'),

              const SizedBox(height: 40),

              Text("NO OF PEOPLE:"),

              const SizedBox(height: 20),

              MyTextField(hintText: '...'),

              const SizedBox(height: 40),

              Text("BANK ACCOUNT DETAILS"),

              const SizedBox(height: 20),

              MyTextField(hintText: 'Bank Account Number'),

              SizedBox(height: 20),
              MyButton(
                text: "Book Reservation",
                onTap: reserved,
              ),
            ],
          ),
        ),])
      ),
      )
    );
  }
}
