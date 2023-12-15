import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> items = List.generate(6, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollView with GridView Example'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              // Widget lain di atas GridView
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Some Content Above GridView',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  color: Colors.teal[100],
                  child: Center(
                    child: Image.asset('assets/icons/Calculator.png'),

                    // child: Text(
                    //   items[index],
                    //   style: TextStyle(fontSize: 18.0),
                    // ),
                  ),
                );
              },
              childCount: items.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              // Widget lain di bawah GridView
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Some Content Below GridView',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
