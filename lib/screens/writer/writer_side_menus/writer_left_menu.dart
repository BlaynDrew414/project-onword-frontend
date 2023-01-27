import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';

class ChapterListScreen extends StatelessWidget {
  final List<Chapter> chapters;

  const ChapterListScreen({required this.chapters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chapters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(chapters[index].title),
                  trailing: IconButton(
                    icon: Icon(Icons.note_add),
                    onPressed: () {
                      // Add note for chapter
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text("Add Chapter"),
              onPressed: () {
                // Add new chapter
              },
            ),
          ),
        ],
      ),
    );
  }
}
