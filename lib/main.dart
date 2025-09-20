import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: Text('Row and Column')),
        body: FirstPage(),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color color;

  const KotakBiruJempol({super.key, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.favorite, color: Colors.white, size: 40),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  KotakBiruJempol(color: Colors.purple),
                  Text('Jepang'),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [
                  KotakBiruJempol(color: Colors.red),
                  Text('China'),
                ],
              ),
              SizedBox(width: 16),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  KotakBiruJempol(color: Colors.green),
                  Text('Probolinggo'),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [
                  KotakBiruJempol(color: Colors.yellow),
                  Text('Malang'),
                ],
              ),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}
