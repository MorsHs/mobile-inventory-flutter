import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                children:[ Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('Item Name')),
                        DataColumn(label: Text('Quantity')),
                        DataColumn(label: Text('PO NO.')),
                        DataColumn(label: Text('PR NO.')),
                        DataColumn(label: Text('ICS NO.')),
                      ], rows: List<DataRow>.generate(
                      100,(index) => DataRow(cells: [
                      DataCell(Text("AntiVirus")),
                      DataCell(Text("15")),
                      DataCell(Text("16357")),
                      DataCell(Text("85564")),
                      DataCell(Text("77885")),
                    ],
                    ),
                    ),
                  ),
                  ),
                )],
            ),
          )
        ],
      ),
    );
  }
}
