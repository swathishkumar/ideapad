// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomNotes extends StatelessWidget {
  const CustomNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 189, 50, 182)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subject",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Spacer(),
                  Icon(Icons.edit),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.delete)
                ],
              ),
              Text("Description"),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Date"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.share)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
