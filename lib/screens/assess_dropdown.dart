import 'package:flutter/material.dart';

class DropDownAssess extends StatefulWidget {
  const DropDownAssess({Key key}) : super(key: key);

  @override
  _DropDownAssessState createState() => _DropDownAssessState();
}

class _DropDownAssessState extends State<DropDownAssess> {
  // Buat nyimpen pilihan dari dropdown
  AssessList selectedList;
  // Buat bikin list dari assessmentlist class
  List<AssessList> assessment = [
    AssessList(assnum: 0, assval: 'bad'),
    AssessList(assnum: 1, assval: 'ok'),
    AssessList(assnum: 2, assval: 'good'),
  ];

  // Bikin function buat generate dropdownnya
  List<DropdownMenuItem> generateDropDown(List<AssessList> assessment) {
    List<DropdownMenuItem> items = [];
    for (var item in assessment) {
      items.add(
        DropdownMenuItem(
          child: Text(item.assval),
          value: item.assnum,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<AssessList>(
      value: selectedList,
      items: generateDropDown(assessment),
      onChanged: (item) {
        setState(() {
          selectedList = item;
        });
      },
    );
  }
}

class AssessList {
  int assnum;
  String assval;

  AssessList({this.assnum, this.assval});
}
