import 'package:flutter/material.dart';
import 'context_menu.dart';

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
      appBar: AppBar(
        title: Text("Snippets"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Btn(
              title: "Context Menu",
              screen: ExContextMenu(),
            )
          ],
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
        child: Text(title),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (ctx) => screen
          ));
        },
      ),
    );
  }
}
