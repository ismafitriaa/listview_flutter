import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'IsmaApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            const Trending(),
            const ListBerita(),
            const ListBerita(),
            const ListBerita(),
            const ListBerita(),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
      ),
      // margin: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 180,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd75cac6bbdad4d39/62fcba646894f733513bbdae/Raphael_Varane_Man_Utd_GFX.jpg?quality=80&format=pjpg&auto=webp&width=620")
                  ],
                ),
              ),
              Container(
                height: 116,
                width: 228,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                ),
                child: const Text(
                    'Harry Maguire: Saya Jadi Sasaran Tembak Media'),
              ),
            ],
          ),
          Container(
            height: 35,
            alignment: Alignment.centerLeft,
            child: const Text('Malang, Sep 2022'),
          ),
        ],
      ),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd75cac6bbdad4d39/62fcba646894f733513bbdae/Raphael_Varane_Man_Utd_GFX.jpg?quality=80&format=pjpg&auto=webp&width=620"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            child: const Text(
              'Raphael Varane: Saya Mulai Menikmati Manchester United!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Colors.redAccent,
            child: const Text(
              'Transfer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}