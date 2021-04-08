import 'package:flutter/material.dart';
import 'package:mywhatsapp/reusable/Wcards.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcards(
            "My Status",
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "Tap to add status update"),
        Divider(),
        Heading("Recent Updates"),
        Wcards(
            "Ritick Madaan",
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "10 April, 6:03 pm"),
        Wcards(
            "Vaibhav Chotani",
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "10 April, 6:03 pm"),
        Divider(),
        Heading("Today"),
        Wcards(
            "Rupal Aggarwal",
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "10 April, 6:03 pm"),
        Wcards(
            "Dev Raj",
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "10 April, 6:03 pm"),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(heading,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
