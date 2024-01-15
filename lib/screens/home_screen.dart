import 'package:flutter/material.dart';
import 'package:indexed_stack/widgets/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return buildBody();
  }

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget buildBody() {
    return Scaffold(
      appBar: AppBar(title: const Text("Indexed Stack")),
      body: IndexedStack(
        index: currentIndex,
        children: [
          ContainerWidget(text: "Home", color: Colors.amber),
          ContainerWidget(text: "Community", color: Colors.blueAccent),
          ContainerWidget(text: "Settings", color: Colors.greenAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
