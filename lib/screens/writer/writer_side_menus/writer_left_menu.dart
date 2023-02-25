import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';

class WriterLeftMenu extends StatefulWidget{
  @override 

  _WriterLeftMenuState createState() => _WriterLeftMenuState();

 }


 class _WriterLeftMenuState extends State<WriterLeftMenu> {
  @override 

Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: writerTextColor,
      width: 0.3,
    )

  ),
  child: Drawer(
    
    
  ),
);
}
 }