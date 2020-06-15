import 'package:flutter/material.dart';
import 'package:sm2/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

  final sm = Sm();
  
  @override
  @override
  Widget build(BuildContext context) {
    SmResponse smResponse = sm.calc(
      quality: 0,
      repetitions: 0,
      previousInterval: 0,
      previousEaseFactor: 2.5
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaced Repetition'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Repetitions: ${smResponse.repetitions}"),
            Text("Interval: ${smResponse.interval}"),
            Text("Ease Factor: ${smResponse.easeFactor}")
          ],
        ),
      ),
    );
  }
}