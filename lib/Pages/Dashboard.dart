import 'package:flutter/material.dart';

import '../Custom/CardReport.dart';
import '../Custom/DashText.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return  Column(
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
    );
  }
}
