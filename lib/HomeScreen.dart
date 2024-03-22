import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  void changeState() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: const Scaffold(
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(Icons.download),
                  text: 'Download',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Profile',
                ),
              ],
              unselectedLabelColor: Color(0xff999999),
              labelColor: Colors.white,
              indicatorColor: Colors.transparent,
            ),
          ),
        ));
  }
}
