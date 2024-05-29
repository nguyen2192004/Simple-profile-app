import 'package:flutter/material.dart';
import 'Contacts.dart';
import 'ProjectTab.dart';
import 'AboutMe.dart';
import 'HomeTab.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Portfolio"),
          ),
          body: TabBarView(
            children: [
              HomeTab(),
              AboutMeTab(),
              ProjectsTab(),
              ContactTab(),
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'About Me',
              ),
              Tab(
                icon: Icon(Icons.build),
                text: 'Projects',
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
                text: 'Contact',
              ),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    builder: (context, widget) => ResponsiveWrapper.builder(
      widget,
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
    ),
  ));
}
