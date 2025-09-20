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
      home: Scaffold(body: MusikPage()),
    );
  }
}

class MusikPage extends StatelessWidget {
  const MusikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tambahkan backgroundColor untuk latar belakang gelap
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Text(
          "Pemutar Musik",
          // Ubah warna teks menjadi putih agar kontras dengan latar gelap
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      bottomNavigationBar: buildControlBar(),
    );
  }
}

Widget buildControlBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    // Ubah warna container menjadi sedikit lebih terang dari background
    color: Colors.grey[900],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Widget children tetap sama
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shuffle, color: Colors.white),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.skip_previous, color: Colors.white),
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle_fill, color: Colors.white, size: 70),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.skip_next, color: Colors.white),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.repeat, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
