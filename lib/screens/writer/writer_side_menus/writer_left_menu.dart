import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/core/models/book_data_model.dart';
import 'package:flutter/rendering.dart';


class WriterLeftMenu extends StatefulWidget {
  final BookInfo book;
  WriterLeftMenu({required this.book});
  @override
  _WriterLeftMenuState createState() => _WriterLeftMenuState();
}

class _WriterLeftMenuState extends State<WriterLeftMenu> {
  bool _isChapterExpanded = true;
  bool _isNoteExpanded = true;
  
    void _onReorder(int oldIndex, int newIndex, List list) {
    if (newIndex > oldIndex) newIndex -= 1;
    setState(() {
      final item = list.removeAt(oldIndex);
      list.insert(newIndex, item);
    });
  }

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
            Container(
              width: 150,
              child: Row(
                children: [
                  GestureDetector(
                    child: _isChapterExpanded
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      setState(() {
                        _isChapterExpanded = !_isChapterExpanded;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0, // add some spacing between the icon and text
                  ),
                  Text(
                    'Chapters',
                    style: TextStyle( 
                      fontSize:
                          14, // set the font size to make the text smaller
                    ),
                  ),
                  Spacer(), // add a spacer widget to push the plus sign icon to the right
                  GestureDetector(
                    child: Icon(
                      Icons.add,
                      size: 18,
                    ),
                    onTap: () {
                      setState(() {
                        widget.book.chapter
                            .add(Chapter(title: 'Untitled Chapter'));
                      });
                    },
                  ),
                  SizedBox(width: 9.0)
                ],
              ),
            ),
            if (_isChapterExpanded)
             ReorderableListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    key: Key('${widget.book.chapter[index].hashCode}'),
                    title: Text(widget.book.chapter[index].title),
                    trailing: Icon(Icons.drag_handle),
                  );
                },
                itemCount: widget.book.chapter.length,
                onReorder: (oldIndex, newIndex) {
                  _onReorder(oldIndex, newIndex, widget.book.chapter);
                },
              ),
            SizedBox(height: 16), // add some space below the chapter list tiles
            Container(
              width: 150,
              child: Row(
                children: [
                  GestureDetector(
                    child: _isNoteExpanded
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      setState(() {
                        _isNoteExpanded = !_isNoteExpanded;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0, // add some spacing between the icon and text
                  ),
                  Text(
                    'Notes',
                    style: TextStyle(
                      fontSize:
                          14, // set the font size to make the text smaller
                    ),
                  ),
                  Spacer(), // add a spacer widget to push the plus sign icon to the right
                  GestureDetector(
                    child: Icon(
                      Icons.add,
                      size: 18,
                    ),
                    onTap: () {
                      setState(() {
                        widget.book.notes.add(Note(title: 'Untitled Note', content: ''));
                      });
                    },
                  ),
                  SizedBox(width: 9.0)
                ],
              ),
            ),
            if (_isNoteExpanded)
  ReorderableListView.builder(
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
    itemBuilder: (context, index) {
      return ListTile(
        key: Key('${widget.book.notes[index].hashCode}'),
        title: Text(widget.book.notes[index].title),
        trailing: Icon(Icons.drag_handle),
      );
    },
    itemCount: widget.book.notes.length,
    onReorder: (oldIndex, newIndex) {
      setState(() {
        final item = widget.book.notes.removeAt(oldIndex);
        widget.book.notes.insert(newIndex, item);
      });
    },
  ),
          ],
        ),
      ),
    );
  }
}
