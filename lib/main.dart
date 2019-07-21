import 'package:flutter/material.dart';
import 'context_menu.dart';
import 'bmnav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snippets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snippets"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Btn(
                title: "Context Menu",
                screen: ExContextMenu(),
              ),
              Btn(
                title: "Bottom Nav Bar",
                screen: ExBMNav(),
              )
            ],
          ),
        ),
      )
    );
  }
}

class Btn extends StatelessWidget {
  final String title;
  final Widget screen;

  Btn({this.title, this.screen});

  @override
  Widget build(ctx) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
        child: Text(title),
        onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => screen))
      ),
    );
  }
}
