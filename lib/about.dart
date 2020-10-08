import 'package:flutter/material.dart';
import 'bmi.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              PicApp(),
              ProfileName(),
              TextEmail(),
              Baris1(),
              Baris2(),
            ],
          ),
        ),
      ),
    );
  }
}
class PicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(
          image: AssetImage("images/pp.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'I Kadek Permana Putra',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}
class TextEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'ikdkpermana@gmail.com',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
class Baris1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.black54,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.teal,
                  ),
                  Text(
                    'Kintamani',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Baris2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 50,
                    color: Colors.indigo,
                  ),
                  Text(
                    'Music',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.games,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  Text(
                    'Games',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}