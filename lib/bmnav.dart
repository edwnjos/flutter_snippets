import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;


class ExBMNav extends StatefulWidget {
  @override
  ExBMNavState createState() => ExBMNavState();
}

class ExBMNavState extends State<ExBMNav> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    WorkoutsScreen(),
    AccountScreen(),
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();


  @override
  Widget build(_) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),backgroundColor: Colors.blue, ),
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: false),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home),
          bmnav.BottomNavItem(Icons.fitness_center),
          bmnav.BottomNavItem(Icons.person),
        ],
      ),
    );
  }

  
}

class HomeScreen extends StatefulWidget {
  HomeScreen();
  @override
 HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(50.0),
        child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}

class WorkoutsScreen extends StatefulWidget {
  WorkoutsScreen();
  @override
 WorkoutsScreenState createState() => WorkoutsScreenState();
}

class WorkoutsScreenState extends State<WorkoutsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.all(50.0),
        child: Text('Workouts', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}

class AccountScreen extends StatefulWidget {
  AccountScreen();
  @override
 AccountScreenState createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.yellow[600],
        padding: EdgeInsets.all(50.0),
        child: Text('Account', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}
