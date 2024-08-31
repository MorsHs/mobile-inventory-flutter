import 'package:flutter/material.dart';
import '../Custom/CardReport.dart';
import '../Custom/DashText.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
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
            NavigationDestination(icon: Icon(Icons.book), label: "Released"),
            NavigationDestination(
                icon: Icon(Icons.auto_awesome_mosaic), label: "Export"),
          ],
          selectedIndex: index,
          elevation: 3,
          onDestinationSelected: (value) => setState(() {
            index = value;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const TextDash(text: "Month of", fontsize: 20),
                  const TextDash(text: 'July', fontsize: 24),
                  const TextDash(text: "2024", fontsize: 16),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Cardreport(
                            icons: Icons.add,
                            itemCount: 25,
                            description: 'Items Added',
                            color: Colors.orange,
                            fontColor: Colors.white,
                            paddingLeft: 25,
                          ),
                          Cardreport(
                            icons: Icons.remove,
                            itemCount: 2,
                            description: 'Released Items',
                            color: Colors.greenAccent,
                            paddingLeft: 17,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Cardreport(
                            icons: Icons.storage,
                            itemCount: 106,
                            description: 'Total Stock',
                            color: Colors.purpleAccent.shade100,
                            fontColor: Colors.white,
                            paddingLeft: 25,
                          ),
                          Cardreport(
                            icons: Icons.compare,
                            itemCount: 36,
                            description: 'Total Transaction',
                            color: Colors.lightGreenAccent.shade400,
                            paddingLeft: 15,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => null,
            child: Icon(
              Icons.add,
              color: Colors.green,
            ),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: () => null,
            child: Icon(
              Icons.remove,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
          )
        ],
      ),
    );
  }
}
