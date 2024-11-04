
import 'package:flutter/material.dart';
import 'package:flutter_inventory/presentation/widgets/CustomizedDataTable.dart';

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
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
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
           const Customizeddatatable(type: 0)

          ],
        ),
      ),
    );
  }
}

