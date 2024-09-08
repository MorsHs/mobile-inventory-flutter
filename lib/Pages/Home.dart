import 'package:flutter/material.dart';
import 'package:flutter_inventory/Pages/Dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  Widget dashboard  = Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Dashboard"),
            NavigationDestination(
                icon: Icon(Icons.inventory), label: "Inventory"),
            NavigationDestination(icon: Icon(Icons.book,), label: "Released"),
            NavigationDestination(
                icon: Icon(Icons.auto_awesome_mosaic), label: "Export"),
          ],
          selectedIndex: index,
          elevation: 3,
          onDestinationSelected: (value) => setState(() {
            index = value;
            switch (index) {}
          }),
          backgroundColor: const Color.fromRGBO(247, 214, 133, 1.0),
        ),
      ),



      appBar: AppBar(
        title: const Text('Dashboard'),
        elevation: 3,
        backgroundColor: const Color.fromRGBO(247, 214, 133, 1.0),
        titleSpacing: 30,
        toolbarHeight: 99,
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),


      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => null,
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
            child: const Icon(
              Icons.add,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () => null,
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
            child: const Icon(
              Icons.remove,
              color: Colors.red,
            ),
          )
        ],
      ),
body: dashboard,
    );
  }
}
