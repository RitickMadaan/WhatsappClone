import 'package:flutter/material.dart';

class Wcards extends StatefulWidget {
  final String name, imageUrl, time;
  Wcards(this.name, this.imageUrl, this.time);
  @override
  _WcardsState createState() =>
      _WcardsState(this.name, this.imageUrl, this.time);
}

class _WcardsState extends State<Wcards> {
  String name, imageUrl, time;
  _WcardsState(this.name, this.imageUrl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25.0,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(time),
    );
  }
}
