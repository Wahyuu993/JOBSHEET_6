import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {

  var listNama = [
  'Wahyu Triyono', 'Lukman Faozi', 'Musafa Ali', 'Suripto',
  'Muhammad Rifki', 'Hanif Suranto', 
  ];
  var listWarna = [
  Colors.red, Colors.purple, Colors.teal, Colors.lime,
  Colors.indigo, Colors.deepPurple, Colors.cyan,
  Colors.blue, Colors.yellow
  ];
  int index = 0;

  void incrementIndex () {
    setState(() {
      index++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa Kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr, 
            style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length]
          ),       
        )
      ],
    );
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wahyu Triyono STI202102355'),
        ),
        body: Center(
          child: teksUtama,
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Refresh',
            child : Icon(Icons.refresh),
            onPressed: teksUtama.state.incrementIndex,
        ),
      )
    )
  );
}

class TeksUtama extends StatefulWidget {

  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}