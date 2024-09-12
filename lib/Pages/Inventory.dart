import 'package:flutter/material.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: SearchBar(
                hintText: 'Item Search',
                leading: IconButton(onPressed: () => null, icon: Icon(Icons.list)),
                trailing: const [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.search),
                  )
                ],
              ),
              ),
            const SizedBox(height: 15,),
            const Divider(indent: 20,endIndent: 20,),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  children:[ SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                    DataColumn(label: Text('Item Code')),
                    DataColumn(label: Text('Item Name')),
                    DataColumn(label: Text('Stock')),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text("0321")),
                      DataCell(Text("Antivirus")),
                      DataCell(Text("5")),
                    ]),

                  ],),
                          ),
                  ]),
              )
          ],
        ),
      ),
    );
  }
}
