import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  runApp(NumberGames());
}

class NumberGames extends StatefulWidget {
  const NumberGames({Key key}) : super(key: key);

  @override
  _NumberGamesState createState() => _NumberGamesState();
}

class _NumberGamesState extends State<NumberGames> {
  bool _selectedGuess = false;
  bool _selectedPerfect = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(!_selectedGuess && !_selectedPerfect
                ? 'Number Games'
                : _selectedGuess
                    ? 'Guess my number'
                    : 'Perfect square or triangle'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Games',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Guess my number',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedGuess = !_selectedGuess;
                      _selectedPerfect = false;
                    });
                  },
                  selected: _selectedGuess,
                  selectedTileColor: Colors.blue.withOpacity(0),
                ),
                ListTile(
                  title: Text(
                    'Perfect square or triangle',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedPerfect = !_selectedPerfect;
                      _selectedGuess = false;
                    });
                  },
                  selected: _selectedPerfect,
                  selectedTileColor: Colors.blue.withOpacity(0),
                )
              ],
            ),
          ),
          body: _selectedGuess
            ? GuessingGame()
            : _selectedPerfect
              ? PerfectNum()
              : Center(
                child: Text(
                  'Simple Number Game App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
        ),
      ),
    );
  }
}

class GuessingGame extends StatefulWidget {
  const GuessingGame({Key key}) : super(key: key);

  @override
  _GuessingGameState createState() => _GuessingGameState();
}

class _GuessingGameState extends State<GuessingGame> {
  int _guess;
  int _secretNum;
  final Random _random = Random();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _guess = null;
    _secretNum = _random.nextInt(100) + 1;
  }

  int _compareGuess() {
    return _guess - _secretNum;
  }

  void _clearText() {
    _myController.clear();
    _focusNode.requestFocus();
  }

  void _makeGuess() {
    _focusNode.unfocus();
    int input = int.tryParse(_myController.text);
    if (input != null) {
      setState(() {
        _guess = input;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialog(context),
      );
    } else {
      setState(() {
        _guess = null;
      });
    }
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: Text('Guess Made'),
      content: Text('You guessed: $_guess'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'I am thinking of a number between 1 and 100...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              _guess == null
                  ? 'You have not made a guess yet!'
                  : _guess > 100
                      ? 'Your guess is invalid'
                      : _guess < 1
                          ? 'Your guess is invalid'
                          : _compareGuess() == 0
                              ? 'You guessed correctly!'
                              : _compareGuess() < 0
                                  ? 'You guessed too low!'
                                  : 'You guessed too high!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: Card(
                shadowColor: Colors.black,
                elevation: 25.0,
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      focusNode: _focusNode,
                      controller: _myController,
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: false, signed: false),
                      onTap: _clearText,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Make a guess...',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                                style: BorderStyle.solid)),
                        focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2.0,
                                style: BorderStyle.solid)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(color: Colors.blue.withOpacity(0.75)),
              child: InkWell(
                splashColor: Colors.blueAccent,
                onTap: _makeGuess,
                child: Center(
                  child: Text(
                    'Convert',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PerfectNum extends StatefulWidget {
  const PerfectNum({Key key}) : super(key: key);

  @override
  _PerfectNumState createState() => _PerfectNumState();
}

class _PerfectNumState extends State<PerfectNum> {
  String _numberType;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberType = 'No number has been inputted.';
  }

  void _clearText() {
    _myController.clear();
    _focusNode.requestFocus();
  }

  void _checkNumber() {
    if (_myController.text.isEmpty) {
      setState(() {
        _numberType = 'No number has been inputted.';
      });
      return;
    }
    _focusNode.unfocus();
    int input = int.tryParse(_myController.text);
    if (input != null) {
      setState(() {
        _numberType = !_isSquare(input) && !_isTriangle(input)
            ? 'Your number is neither a square nor a triangle.'
            : _isSquare(input) && _isTriangle(input)
                ? 'Your number is both a square and a triangle.'
                : _isSquare(input)
                    ? 'Your number is a square but not a triangle.'
                    : 'Your number is a triangle but not a square.';
      });
    } else {
      setState(() {
        _numberType = 'Invalid number inputted.';
      });
    }
  }

  bool _isSquare(int number) {
    int sr = sqrt(number).round();
    return sr * sr == number;
  }

  bool _isTriangle(int number) {
    for (int i = 0; pow(i, 3) <= number; i++) {
      if (pow(i, 3) == number) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   'Input a number to see what it is',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Colors.blueGrey,
            //       fontSize: 30.0,
            //       fontStyle: FontStyle.italic),
            // ),
            Text(
              _numberType,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  focusNode: _focusNode,
                  controller: _myController,
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  onTap: _clearText,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Input a number...',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                            style: BorderStyle.solid)),
                    focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2.0,
                            style: BorderStyle.solid)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(color: Colors.blue.withOpacity(0.75)),
              child: InkWell(
                splashColor: Colors.blueAccent,
                onTap: _checkNumber,
                child: Center(
                  child: Text(
                    'Convert',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
