import 'package:flutter/material.dart';

import '../widgets/CustomizedDataTable.dart';

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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SearchBar(
              hintText: 'Item Search',
              leading:
                  IconButton(onPressed: () => null, icon: Icon(Icons.list)),
              trailing: const [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
           Customizeddatatable(type: 1)
        ],
      ),
    );
  }
}
