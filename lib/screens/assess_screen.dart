import 'package:flutter/material.dart';
import 'package:http_json_latihan_mandiri/screens/assess_tile.dart';

import 'assess_dropdown.dart';

class AssessScreen extends StatelessWidget {
  const AssessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assessment',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white60,
              ),
            ),
            Text(
              'Friend\'s name',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: TileAssess(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: null, //kalo ga di null nanti multiple hero
            label: Text("Save"),
            icon: Icon(Icons.save),
            onPressed: () => print('saved'),
          ),
          FloatingActionButton.extended(
            heroTag: null, //kalo ga di null nanti multiple hero
            label: Text("Cancel"),
            icon: Icon(Icons.cancel_presentation_outlined),
            onPressed: () {
              print('Canceled');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
