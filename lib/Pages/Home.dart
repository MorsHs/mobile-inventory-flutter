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
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.list_rounded), label: "Stock"),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        ],
        selectedIndex: index,
        elevation: 3,
        onDestinationSelected: (value) => index = value,

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
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const TextDash(text: "Month of", fontsize: 20),
                const TextDash(text: 'July', fontsize: 24),
                const TextDash(text: "2024", fontsize: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            icons: Icons.minimize,
                            itemCount: 2,
                            description: 'Released Items',
                            color: Colors.greenAccent,
                            paddingLeft: 17,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Cardreport(
                              icons: Icons.backpack,
                              itemCount: 106,
                              description: 'Total Stock',
                              color: Colors.purpleAccent.shade100,
                              fontColor: Colors.white,
                              paddingLeft: 25,
                            ),
                            Cardreport(
                              icons: Icons.cases,
                              itemCount: 36,
                              description: 'Total Transaction',
                              color: Colors.lightGreenAccent.shade400,
                              paddingLeft: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
