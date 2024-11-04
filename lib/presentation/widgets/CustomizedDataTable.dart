import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class Customizeddatatable extends StatefulWidget {
   final int type; // 0 = Inventory | 1 Item Catalog | 2 Item Release
   const Customizeddatatable({super.key,required this.type});

  @override
  State<Customizeddatatable> createState() => _CustomizeddatatableState();
}

class _CustomizeddatatableState extends State<Customizeddatatable> {
  @override
  Widget build(BuildContext context) {
    if(widget.type == 0){
      return InventoryDataTable();
    }
    else if(widget.type == 1){
      return CatalogDataTable();
    }
    return const Expanded(
        child: Center(
            child: Text("TABLE FAILED TO LOAD",
              overflow: TextOverflow.fade,
              style: TextStyle(
                  fontSize: 25),
            )
        )
    );
  }
}


Widget CatalogDataTable() {
  return Expanded(
    child: DataTable2(
        minWidth: 500, // yawa 10 hours ko ani dapat mag set kag minWidth para naa kay horizontal scrolling effect
        columnSpacing: 35,
        columns: const [
          DataColumn2(label: Text("Item Name"), size: ColumnSize.L),
          DataColumn2(
            label: Text("Quantity"),
            size: ColumnSize.L,
          ),
          DataColumn2(label: Text("Po No."), size: ColumnSize.L),
          DataColumn2(label: Text("Pr No."), size: ColumnSize.L),
          DataColumn2(label: Text("ICS No."), size: ColumnSize.L),
        ],
        rows: List<DataRow2>.generate(
          100,
              (index) => DataRow2(
            cells: [
              DataCell(
                Text("AntiVirus",softWrap: true,overflow: TextOverflow.fade,),
              ),
              DataCell(Center(child: Text("15"))),
              DataCell(Text("16357")),
              DataCell(Text("85564")),
              DataCell(Text("77885")),
            ],
          ),
        )),
  );
}

Widget InventoryDataTable() {
  return Expanded(
    child: DataTable2(
        minWidth: 200, // yawa 10 hours ko ani dapat mag set kag minWidth para naa kay horizontal scrolling effect
        columnSpacing: 50,
        columns: const [
          DataColumn2(label: Text("Item Code"), size: ColumnSize.S),
          DataColumn2(
            label: Center(child: Text("Item Name")),
            size: ColumnSize.S,
          ),
          DataColumn2(label: Center(child: Text("Stock")), size: ColumnSize.S),
        ],
        rows: List<DataRow2>.generate(
          100,
              (index) => DataRow2(
            cells: [
              DataCell(
                Text("0001",softWrap: true,overflow: TextOverflow.fade,),
              ),DataCell(
                Center(child: Text("AntiVirusasdasdasdasdasdasdasd",softWrap: true,overflow: TextOverflow.fade,)),
              ),DataCell(
                Center(child: Text("15",softWrap: true,overflow: TextOverflow.fade,)),
              ),
    
            ],
          ),
        )),
  );
}
