import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Writing App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OnWord'),
          actions: [
            IconButton(
              icon: Icon(Icons.save),
            onPressed: () {
              //save the text to db
            }
            ), ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('DashBoard'),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(200.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Start writing...',
                ),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
