import 'package:flutter/material.dart';

class Cardreport extends StatelessWidget {
  Cardreport(
      {super.key,
        required this.icons,
        required this.itemCount,
        required this.description,
        required this.color,
        this.fontColor,
         required this.paddingLeft});
  final IconData icons;
  final int itemCount;
  final String description;
  final Color color;
  Color? fontColor = Colors.black;
  double paddingLeft = 25.0; //Description Padding


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.pink,
      height: 140,
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 5),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  icons,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
            )
            ,
            Padding(
              padding: const EdgeInsets.only(left: 35,),
              child: Text('$itemCount',
                style: TextStyle(
                    color: fontColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: paddingLeft),//25 padding left
              child: Text(description,
                style: TextStyle(
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Roboto'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
