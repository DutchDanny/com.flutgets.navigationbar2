import 'package:flutter/material.dart';
import 'app/Dash.dart';
import 'app/Home.dart';
import 'app/More.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(title: const Text('Flutter NavigationBar 2')),
        body: const [
        Home(),
        Dash(),
        More(),
      ][selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        height: 65,
        selectedIndex: selectedPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.dashboard),
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.more_horiz),
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
