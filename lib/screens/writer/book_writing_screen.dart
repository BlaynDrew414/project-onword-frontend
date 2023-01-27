import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/core/models/book_data_model.dart';
import 'package:smart_admin_dashboard/screens/home/components/side_menu.dart';

class BookDetailScreen extends StatefulWidget {
  final BookInfo book;

  BookDetailScreen({required this.book});
  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final Color _textColor = writerTextColor;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.book.title;
    _authorController.text = widget.book.author;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(child: SideMenu(),), need a different drawer for writing screen.
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            title: Text("Book Title"),
            backgroundColor: bgColor,
            bottom: PreferredSize(
              child: Container(
                color: writerTextColor,
                height: 0.3,
              ),
              preferredSize: Size.fromHeight(1),
            )
        ),
    ),
      body: Padding(
        padding: EdgeInsets.only(left: 200, right: 200),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                textAlign: TextAlign.center,
                controller: _titleController,
                style: GoogleFonts.merriweather(
                  color: _textColor,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  hintText: 'Chapter Title...',
                  border: InputBorder.none,
                ),
                maxLines: null,
              ),
              Divider(
                color: _textColor,
                thickness: 1,
                height: 60,
                endIndent: 420,
                indent: 420,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      style: GoogleFonts.merriweather(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: _textColor,
                      ),
                      decoration: InputDecoration(
                        hintText: "Start writing...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
