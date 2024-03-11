// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/utils/colordb.dart';
import 'package:note_app/view/Homepage/widgets/bottomsheet.dart';
import 'package:note_app/view/Homepage/widgets/customnotes.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int? slectedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colorconstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colorconstants.backgroundColor,
        title: Text(
          "Ideapad",
          style: TextStyle(
              color: Colorconstants.textcolor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colorconstants.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) => CustomNotes(
                  title: '', des: '', date: '', notecolor: Colors.white),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 4),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Bottomsheetcustomcard()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
