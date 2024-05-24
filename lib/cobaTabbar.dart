import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Deskripsi'),
                Tab(text: 'Paket'),
                Tab(text: 'Review'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ScrollableContent(
                color: Colors.red,
                text: 'Deskripsi',
              ),
              ScrollableContent(
                color: Colors.green,
                text: 'Paket',
              ),
              ScrollableContent(
                color: Colors.blue,
                text: 'Review',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollableContent extends StatelessWidget {
  final Color color;
  final String text;

  const ScrollableContent({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1000, // example height, adjust as needed
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
