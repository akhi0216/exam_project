// ignore_for_file: prefer_const_constructors

import 'package:exam_project/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';

class CustomBottomsheet extends StatefulWidget {
  const CustomBottomsheet({super.key, this.onSavepressed});
  final VoidCallback? onSavepressed;

  @override
  State<CustomBottomsheet> createState() => _CustomBottomsheetState();
}

class _CustomBottomsheetState extends State<CustomBottomsheet> {
  // TextEditingController typecontroller = TextEditingController();
  // TextEditingController descontroller = TextEditingController();
  // TextEditingController availability = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  HomescreenController obj = HomescreenController();
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(11))),
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
// -------------------------------

                  TextFormField(
                    controller: HomescreenController.typecontroller,
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

                  SizedBox(
                    height: 10,
                  ),

// --------------------------
                  TextFormField(
                    controller: HomescreenController.descontroller,
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

                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // validator: (value) {

                    //   if (Homescreencontroller.desccontroller.text.isNotEmpty) {
                    //     return null;
                    //   } else {
                    //     return "enter a valid desc";
                    //   }
                    // },
                    controller: HomescreenController.availabilitycontroller,
                    maxLines: 3,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Text(
                        "availability",
                        style: TextStyle(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  // -----------
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: widget.onSavepressed,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Center(
                              child: Text(
                                "save",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        );
      },
    );
  }
}
