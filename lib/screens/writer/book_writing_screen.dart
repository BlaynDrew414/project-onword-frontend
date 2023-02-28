import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/core/models/book_data_model.dart';
import 'package:smart_admin_dashboard/screens/writer/writer_side_menus/writer_left_menu.dart';

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
  bool _isDrawerOpen = true;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.book.title;
    _authorController.text = widget.book.author;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text(
            widget.book.title, 
            style: GoogleFonts.merriweather(
              color: _textColor, 
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: bgColor,
          bottom: PreferredSize(
            child: Container(
              color: writerTextColor,
              height: 0.3,
            ),
            preferredSize: Size.fromHeight(1),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _toggleDrawer,
          ),
        ),
      ),
      body: Row(
        children: [
          if (screenWidth >= 900 && _isDrawerOpen)
            Expanded(
              child: WriterLeftMenu(book: widget.book),
            ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      controller: _titleController,
                      style: GoogleFonts.merriweather(
                        color: _textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
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
                      height: 40,
                      endIndent: 420,
                      indent: 420,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 80,
                            right: _isDrawerOpen ? 250 : 0,
                            left: _isDrawerOpen ? 50 : 0,
                          ),
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
          ),
        ],
      ),
      drawer: screenWidth < 900
          ? Drawer(
              elevation: 0.0,
              child: WriterLeftMenu(book: widget.book),
            )
          : null,
    );
  }
}
