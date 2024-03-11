// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/utils/dummydb.dart';

class Bottomsheetcustomcard extends StatefulWidget {
  const Bottomsheetcustomcard({super.key});

  @override
  State<Bottomsheetcustomcard> createState() => _BottomsheetcustomcardState();
}

class _BottomsheetcustomcardState extends State<Bottomsheetcustomcard> {
  int slectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, bottomsetState) => Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Title",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text(
                "Description",
                style: TextStyle(color: Colors.black),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text(
                "Date",
                style: TextStyle(color: Colors.black),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            slectedindex = index;

                            bottomsetState(() {});
                          },
                          child: Container(
                            width: index == slectedindex ? 70 : 50,
                            height: index == slectedindex ? 70 : 50,
                            decoration: BoxDecoration(
                                color: Colordatabase.colorlist[index]),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 4),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 50,
                      color: Colors.grey,
                      child: Center(child: Text("cancel")))),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                      height: 50,
                      color: Colors.grey,
                      child: Center(child: Text("save"))))
            ],
          )
        ]),
      ),
    );
  }
}
