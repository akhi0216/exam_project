// ignore_for_file: prefer_const_constructors

import 'package:exam_project/controller/home_screen_controller.dart';
import 'package:exam_project/view/home_screen/custom_assetlist.dart';
import 'package:exam_project/view/home_screen/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomescreenController saveobj = HomescreenController();

  var mybox = Hive.box('projectbox');
  @override
  void initState() {
    saveobj.init();
    setState(() {});
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("asset lists"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              var e = mybox.get(HomescreenController.mykeys[index]);
              return Padding(
                padding: EdgeInsets.all(8),
                child: CustomAssetlist(
                    type: e["type"],
                    desc: e["desc"],
                    availability: e["availability"]),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 7,
                ),
            itemCount: HomescreenController.mykeys.length),

        // ----------------------------------
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return CustomBottomsheet(
                  onSavepressed: () {
                    saveobj.addData();

                    setState(() {});

                    Navigator.pop(context);
                  },
                );
              },
            );
          },
          child: Text(
            "ADD",
            style: TextStyle(color: Colors.black),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          mini: true,
        ),
      ),
    );
  }
}
