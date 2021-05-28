import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const BasicPhrases());
}

class BasicPhrases extends StatelessWidget {
  const BasicPhrases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PhrasesPage());
  }
}

class PhrasesPage extends StatefulWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  _PhrasesPageState createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final List<String> _phrases = <String>[
    'multumesc',
    'ma scuzati',
    'salut',
    'da',
    'nu',
    'cum te numesti',
    'cum esti',
    'la revedere',
    'foarte bine',
    'ma numesc',
    'multumesc',
    'va rog',
    'cat costa',
    'am nevoie de ajutor',
    'cu placere',
    'incantat de cunostinta',
    'cat este ceasul',
    'unde este',
    'imi este foame',
    'imi pare rau'
  ];

  // Play audio for phrase (not functional)
  Future<int> _hearPhrase(int index) async {
    return _audioPlayer.play('https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Basic Phrases'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 2 * _phrases.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.95),
                gradient: const LinearGradient(
                    tileMode: TileMode.clamp,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.blue, Colors.blueAccent, Colors.lightBlue, Colors.lightBlueAccent]),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                onTap: () => _hearPhrase(index),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                splashColor: Colors.blueAccent,
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Center(
                      child: Text(
                    index.isEven ? _phrases[index ~/ 2] : '${_phrases[index ~/ 2]} (Germana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            );
          }),
    );
  }
}
