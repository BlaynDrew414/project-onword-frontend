import 'package:flutter/material.dart';
import './widgets/word_count.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Writing App',
      home: Scaffold(
        drawer: Drawer(
          elevation: 0.0,
          semanticLabel: null,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      // Handle the tap event
                    },
                    child: Image.asset(
                      'assets/oldewolfwhitelogo.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text("Title of Book Goes Here"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => BookTitleHomePage))
                },
              ),
              ListTile(
                title: Text("Chapters/Subchapters Go Here"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => BookTitleHomePage))
                },
              ),
              ListTile(
                title: Text("Notes Go Here"),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => BookTitleHomePage))
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('OnWord'),
          actions: [
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  //save the text to db
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Enter Chapter Title...',
                    hintStyle: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                ),
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
      ),
    );
  }
}
