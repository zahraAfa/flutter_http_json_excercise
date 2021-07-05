import 'package:flutter/material.dart';
import 'package:http_json_latihan_mandiri/screens/assess_dropdown.dart';

class TileAssess extends StatefulWidget {
  const TileAssess({Key key}) : super(key: key);

  @override
  _TileAssessState createState() => _TileAssessState();
}

class _TileAssessState extends State<TileAssess> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Title'),
            subtitle: Text('SubTitle'),
            // trailing: DropDownAssess(),
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemCount: 4);
  }
}
