

import 'package:flutter/cupertino.dart';

class WordCount {
  int _wordCount = 0;
  TextEditingController _controller;
  WordCount(this._controller);

  void updateWordCount() {
    _controller.addListener(() {
      _wordCount = _controller.text.split(" ").length;
    });
  }

  int getWordCount() {
    return _wordCount;
  }
}