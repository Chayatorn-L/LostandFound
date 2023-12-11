import 'package:flutter/material.dart';
import 'package:flutter_main_project/Found/FoundPage.dart';
import 'package:flutter_main_project/Lost%20&%20Found/LFPage.dart';
import 'package:flutter_main_project/LostItem/LostItemPage.dart';
import 'package:flutter_main_project/Map/MapPage.dart';
import 'package:flutter_main_project/Quest/QuestPage.dart';


void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // This widget is the homepage of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lost and Found KMUTT'),
          backgroundColor: Colors.deepOrange,
          bottom: const TabBar(
              dividerColor: Color.fromARGB(255, 61, 56, 47),
              tabs: <Widget>[
                Tab(
                  text: 'List ของหายที่เจอ',
                ),
                Tab(
                  text: 'ประกาศหาของหาย',
                ),
                Tab(
                  text: 'map',
                ),
                Tab(
                  text: 'แจ้งของหาย',
                ),
                Tab(
                  text: 'ของที่เจอแล้ว',
                ),
              ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            LFPage(),
            LostItemPage(),
            MapPage(),
            QuestPage(),
            FoundPage(),
          ],
        ),
      ),
    );
  }
}
