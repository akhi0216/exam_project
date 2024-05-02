// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAssetlist extends StatefulWidget {
  const CustomAssetlist(
      {super.key,
      required this.type,
      required this.desc,
      required this.availability,
      this.ondeletepressed,
      this.oneditpressed});

  final String type;
  final String desc;
  final String availability;
  final VoidCallback? ondeletepressed;
  final VoidCallback? oneditpressed;
  @override
  State<CustomAssetlist> createState() => _CustomAssetlistState();
}

class _CustomAssetlistState extends State<CustomAssetlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Asset Lists"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(11),
          child: Container(
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.type,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    IconButton(
                        onPressed: () {
                          widget.oneditpressed!();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        )),
                    // IconButton(
                    //     onPressed: () {
                    //       widget.ondeletepressed!();
                    //     },
                    //     icon: Icon(
                    //       Icons.delete,
                    //       color: Colors.black,
                    //     ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.desc,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.availability,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
