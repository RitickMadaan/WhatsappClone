import 'package:flutter/material.dart';
import 'calls.dart';
import 'chat.dart';
import 'status.dart';
import 'camera.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("WhatsApp"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                    child: Text("CHATS",
                        style: Theme.of(context).textTheme.button)),
                Tab(
                  child:
                      Text("STATUS", style: Theme.of(context).textTheme.button),
                ),
                Tab(
                  child:
                      Text("CALLS", style: Theme.of(context).textTheme.button),
                ),
              ],
            )),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Camera(),
            Chat(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat, color: Colors.white),
        ));
  }
}
