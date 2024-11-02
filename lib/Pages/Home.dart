import 'package:flutter/material.dart';
import 'package:flutter_inventory/Custom/CustomFloatingButton.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
   final Widget child;
   const Home({super.key,required this.child});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  late String name;
  @override
  void initState() {
    name = 'Dashboard';
    context.go('/');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Dashboard"),
            NavigationDestination(icon: Icon(Icons.inventory), label: "Inventory"),
            NavigationDestination(icon: Icon(Icons.book,), label: "Catalog"),
            NavigationDestination(icon: Icon(Icons.auto_awesome_mosaic), label: "Export"),
          ],
          selectedIndex: index,
          elevation: 3,
          onDestinationSelected: (value) => setState(() {
            index = value;
            switch (index) {
              case 0:
                context.go('/');
                name = 'Dashboard';
                break;
              case 1:
                context.go('/inventory');
                name = 'Inventory';
                break;
              case 2:
                context.go('/catalog');
                name = 'Catalog';
                break;

            }
          }),
          backgroundColor: const Color.fromRGBO(247, 214, 133, 1.0),
        ),
      ),
      appBar: AppBar(
        title: Text(name),
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
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Customfloatingbutton(iconData: Icons.add, color: Colors.green,route: 'sd',),
          SizedBox(
            height: 15,
          ),
          Customfloatingbutton(iconData: Icons.remove, color: Colors.red,route: 'sd',)
        ],
      ),
      body:widget.child,
    );
  }


}
