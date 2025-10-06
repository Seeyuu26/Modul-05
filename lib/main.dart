import 'package:flutter/material.dart';
import 'musik.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // tampilannya gelap elegan
      home: LaguPage(),
    );
  }
}

class LaguPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sedang memutar"),
        centerTitle: true, 
      ),
      body: Center(
        child: Card(
          elevation: 4, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), 
          ),
          child: Padding(
            padding: const EdgeInsets.all(12), 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Icon(
                  Icons.album,
                  size: 100,
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Di sini ada judul lagu",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Di sini ada nama artis",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const Icon(Icons.favorite_border, color: Colors.redAccent),
                  ],
                ),
               ],
             ),
           ),
         ),
       ),
    );
  }
}