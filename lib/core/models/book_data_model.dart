

import 'package:flutter/cupertino.dart';

class BookInfo {
   String title;
   String author;
   String? imageUrl;
   List<Chapter> chapter;
   List<Note> notes;

  BookInfo({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.chapter,
    required this.notes,
  });
}

class Chapter {
  String title;
  
  Chapter({
    required this.title,
  });
}

class Note {
   String title;
   String content;

  Note({
    required this.title,
    required this.content,
  });
}


final List<BookInfo> bookInfo = [
  BookInfo(
    title: "Book 1",
    author: "B.M. Drew",
    imageUrl: "Put Image URL Here",
    chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
  ),
  BookInfo(
    title: "Book 2",
    author: "John Kipper",
    imageUrl: "Put Image Here",
     chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
  ),
  BookInfo(
    title: "Book 2",
    author: "John Kipper",
    imageUrl: "Put Image Here",
    chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
  ),
  BookInfo(
    title: "Book 3",
    author: "John Kipper",
    imageUrl: "Put Image Here",
    chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
  ),
  BookInfo(
    title: "Book 4",
    author: "John Kipper",
    imageUrl: "Put Image Here",
    chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
  ),
  BookInfo(
    title: "Book 5",
    author: "John Kipper",
    imageUrl: "Put Image Here",
    chapter: [
      Chapter(title: 'Chapter 1', ),
      Chapter(title: 'Chapter 2', ),
      Chapter(title: 'Chapter 3', ),
    ],
    notes: [
      Note(title: 'Note 1', content: 'This is note 1'),
      Note(title: 'Note 2', content: 'This is note 2'),
    ],
    
  ),
];

