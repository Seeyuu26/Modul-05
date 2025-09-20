import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: const Text('Row and Column')),
        body: const FirstPage(),
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
      child: const Icon(Icons.favorite, color: Colors.white, size: 40),
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
                  const KotakBiruJempol(color: Colors.purple),
                  const Text('Jepang'),
                ],
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  const KotakBiruJempol(color: Colors.red),
                  const Text('China'),
                ],
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const KotakBiruJempol(color: Colors.green),
                  const Text('Probolinggo'),
                ],
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  const KotakBiruJempol(color: Colors.yellow),
                  const Text('Malang'),
                ],
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}
