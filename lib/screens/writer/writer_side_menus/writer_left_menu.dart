import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/core/models/book_data_model.dart';

class WriterLeftMenu extends StatefulWidget {
  final BookInfo book;
  WriterLeftMenu({required this.book});
  @override
  _WriterLeftMenuState createState() => _WriterLeftMenuState();
}

class _WriterLeftMenuState extends State<WriterLeftMenu> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: writerTextColor,
          width: 0.3,
        ),
      ),
      child: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Chapters'),
              trailing: _isExpanded
                  ? Icon(Icons.keyboard_arrow_down)
                  : Icon(Icons.keyboard_arrow_right),
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
            if (_isExpanded)
              for (var i = 0; i < widget.book.chapter.length; i++)
                ListTile(
                  title: Text(widget.book.chapter[i].title),
                ),
          ],
        ),
      ),
    );
  }
}
