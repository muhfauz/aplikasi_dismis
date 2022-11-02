import 'package:faker/faker.dart';
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
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            crossAxisEndOffset: 0.0,
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text(
                faker.internet.userName(),
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(faker.lorem.sentence()),
              trailing: TextButton(onPressed: () {}, child: Text('Klik')),
            ),
          );
        },
      ),
    );
  }
}
