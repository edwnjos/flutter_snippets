import 'package:flutter/material.dart';
import 'context_menu.dart';
import 'bmnav.dart';

void main() => runApp(MaterialApp(title: "Snippets", home: Main()));

class Main extends StatelessWidget {
  @override
  Widget build(ctx) => Scaffold(
    appBar: AppBar(title: Text("Snippets")),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Ex("Context Menu", screen: ExContextMenu()),
            Ex("Bottom Nav Bar", screen: ExBMNav())
          ],
        ),
      ),
    )
  );
}

class Ex extends StatelessWidget {
  final String title;
  final Widget screen;

  Ex(this.title, {this.screen});

  @override
  Widget build(ctx) => Padding(
    padding: EdgeInsets.all(8.0),
    child: RaisedButton(
      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Text(title),
      onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => screen))
    ),
  );
}