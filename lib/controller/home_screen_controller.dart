import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomescreenController {
  static TextEditingController typecontroller = TextEditingController();
  static TextEditingController descontroller = TextEditingController();

  static TextEditingController availabilitycontroller = TextEditingController();

  List assetList = [];
  static List mykeys = [];
  var mybox = Hive.box('projectbox');
  void addData() {
    mybox.add({
      "type": typecontroller.text,
      "desc": descontroller.text,
      "availability": availabilitycontroller.text
    });

    mykeys = mybox.keys.toList();
  }

  // to edit

  void editData(var Key) {
    mybox.put(Key, {
      "type": typecontroller.text,
      "desc": descontroller.text,
      "availability": availabilitycontroller.text
    });
  }

  init() {
    mykeys = mybox.keys.toList();
  }
}
