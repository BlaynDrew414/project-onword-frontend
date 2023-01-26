

import 'package:flutter/cupertino.dart';

class BookInfo {
   String title;
   String author;
   String? imageUrl;

  BookInfo({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}

final List<BookInfo> bookInfo = [
  BookInfo(
    title: "Book 1",
    author: "B.M. Drew",
    imageUrl: "Put Image URL Here",
  ),
  BookInfo(
    title: "Book 2",
    author: "John Kipper",
    imageUrl: "Put Image Here",
  ),
  BookInfo(
    title: "Book 2",
    author: "John Kipper",
    imageUrl: "Put Image Here",
  ),
  BookInfo(
    title: "Book 3",
    author: "John Kipper",
    imageUrl: "Put Image Here",
  ),
  BookInfo(
    title: "Book 4",
    author: "John Kipper",
    imageUrl: "Put Image Here",
  ),
  BookInfo(
    title: "Book 5",
    author: "John Kipper",
    imageUrl: "Put Image Here",
  ),
];

