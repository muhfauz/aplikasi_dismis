import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text(
              'Data 1',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Data 2'),
            trailing: TextButton(onPressed: () {}, child: Text('Klik')),
          );
        },
      ),
    );
  }
}
