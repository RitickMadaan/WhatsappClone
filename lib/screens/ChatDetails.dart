import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  final String name, time, imageUrl;
  ChatDetails(this.name, this.time, this.imageUrl);
  @override
  _ChatDetailsState createState() =>
      _ChatDetailsState(this.name, this.time, this.imageUrl);
}

class _ChatDetailsState extends State<ChatDetails> {
  String name, time, imageUrl;
  String message = "";
  _ChatDetailsState(this.name, this.time, this.imageUrl);
  TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _messageController.text = "message";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 20.0,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name),
                    Text("last seen " + time,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 14.0))
                  ],
                ),
              ],
            ),
          ],
        ),
        titleSpacing: 0.0,
      ),
      body: SafeArea(
        child: Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      75,
                  left: 5.0,
                  right: 55.0,
                  bottom: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[600],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.tag_faces, size: 30.0, color: Colors.grey),
                  // TextField(
                  //   onChanged: (value) {
                  //     message = value;
                  //   },
                  //   controller: _messageController,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
