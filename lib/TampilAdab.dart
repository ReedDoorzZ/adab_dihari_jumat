import 'package:flutter/material.dart';

void main() => runApp(TampilAdab());

class TampilAdab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adab Dihari Jum'at"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Memperbanyak Sholawat Nabi.",
    "Mandi Jum'at.",
    "Menggunakan Minyak Wangi.",
    "Bersegera Berangkat Ke Masjid.",
    "Sholat Sunnah Ketika Menunggu Imam atau Khatib.",
    "Tidak Duduk dengan Memeluk Lutut Ketika Khatib Berkhotbah.",
    "Sholat Sunnah Setelah Sholat Jumat.",
    "Membaca Surat Al Kahfi.",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
