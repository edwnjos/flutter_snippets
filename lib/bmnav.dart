import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;


class ExBMNav extends StatefulWidget {
  @override
  ExBMNavState createState() => ExBMNavState();
}

class ExBMNavState extends State<ExBMNav> {
  int tab = 0;
  final List<Widget> screens = [Home(), Fitness(), Account()];
  Widget screen = Home();

  @override
  Widget build(_) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar")),
      backgroundColor: Colors.white,
      body: PageStorage(child: screen, bucket: PageStorageBucket()),
      bottomNavigationBar: bmnav.BottomNav(
        index: tab,
        labelStyle: bmnav.LabelStyle(visible: false),
        onTap: (i) => setState(() {tab = i;screen = screens[i];}),
        items: [
          bmnav.BottomNavItem(Icons.home),
          bmnav.BottomNavItem(Icons.fitness_center),
          bmnav.BottomNavItem(Icons.person),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(_) => Center(child: Text('Home', style: TextStyle(fontSize: 24.0)));
}

class Fitness extends StatelessWidget {
  @override
  Widget build(_) => Center(child: Text('Fitness', style: TextStyle(fontSize: 24.0)));
}

class Account extends StatelessWidget {
  @override
  Widget build(_) => Center(child: Text('Account', style: TextStyle(fontSize: 24.0)));
}
