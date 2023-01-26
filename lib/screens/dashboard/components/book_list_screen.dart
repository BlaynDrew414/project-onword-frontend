import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/models/book_data_model.dart';


class BookListScreen extends StatefulWidget {
  final List<BookInfo> books;

  BookListScreen({required this.books});
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Manuscripts"),
      ),
      body: ListView.builder(
        itemCount: bookInfo.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: bookInfo[index].imageUrl != null ? Image.network(bookInfo[index].title) : null,
            title: Text(bookInfo[index].title),
            subtitle: Text(bookInfo[index].author),
            onTap: () {
              // Navigate to the book detail screen
            },
          );
        },
      ),
    );
  }
}
