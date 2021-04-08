import 'package:flutter/material.dart';
import '../model/calls.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, i) {
        return Column(
          children: <Widget>[
            Divider(),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25.0,
                backgroundColor: Colors.green[300],
                backgroundImage: NetworkImage(callData[i].imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    callData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.call, color: Colors.green),
                ],
              ),
              subtitle: Text(callData[i].time),
            ),
          ],
        );
      },
    );
  }
}
