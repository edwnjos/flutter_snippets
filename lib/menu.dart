import 'package:flutter/material.dart';


class ExMenu extends StatelessWidget {
  @override
  Widget build(_) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Context Menu"),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            elevation: 3.2,
            initialValue: "Settings",
            onCanceled: () => print('you have not chossed anything'),
            tooltip: 'This is tooltip',
            onSelected: (v) => print("you selected $v menu"),
            itemBuilder: (ctx) => [
              PopupMenuItem<String>(value: "about", child: Text("About")),
              PopupMenuItem<String>(value: "settings", child: Text("Settings")),
            ]
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container()
    );
  }
}