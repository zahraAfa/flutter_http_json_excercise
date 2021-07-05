import 'package:flutter/material.dart';

class ListViewBuilderHome extends StatefulWidget {
  const ListViewBuilderHome({Key key}) : super(key: key);

  @override
  _ListViewBuilderHomeState createState() => _ListViewBuilderHomeState();
}

class _ListViewBuilderHomeState extends State<ListViewBuilderHome> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Title'),
          subtitle: Text('SubTitle'),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              print('Remove Tile');
            },
          ),
          onTap: () {
            print("Open Tile");
            Navigator.pushNamed(context, '/assess');
          },
        );
      },
    );
  }
}
