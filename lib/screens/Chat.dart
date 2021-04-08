import 'package:flutter/material.dart';
import '../model/chat.dart';
import 'ChatDetails.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.deepPurple,
                    backgroundImage: NetworkImage(messageData[i].imageUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        messageData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(messageData[i].time,
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  // contentPadding: EdgeInsets.all(5.0),
                  subtitle: Text(messageData[i].message),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetails(messageData[i].name,
                          messageData[i].time, messageData[i].imageUrl);
                    }));
                  },
                ),
              ],
            ));
  }
}
