import 'package:flutter/material.dart';


class ExContextMenu extends StatefulWidget {
  @override
  ExContextMenuState createState() => ExContextMenuState();
}

class ExContextMenuState extends State<ExContextMenu> {


  @override
  Widget build(_) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Context Menu", style: TextStyle(
            fontFamily: "Lulo", fontSize: 20, height: 1.4
          )
        ),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Builder(// needed for the snackbar, otherwise unnecessary..
            builder: (ctx) => PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              elevation: 3.2,
              initialValue: "Settings",
              onCanceled: () {
                print('You have not chossed anything');
              },
              tooltip: 'This is tooltip',
              onSelected: (v) => Scaffold.of(ctx).showSnackBar(
                SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text('you selected: $v')
                )
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: "about",
                    child: Text("About"),
                  ),
                  PopupMenuItem<String>(
                    value: "settings",
                    child: Text("Settings"),
                  ),
                ];
              },
            )
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        ]
      )
    );
  }
}