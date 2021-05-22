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
                    : 'Number Shapes'),
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
                    'Number Shapes',
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

  // Compare guessed number with hidden number
  int _compareGuess() {
    return _guess - _secretNum;
  }

  // Regenerate secret number, clear TextField text and reset guess
  void _generateSecret() {
    _clearText();
    setState(() {
      _guess = null;
      _secretNum = _random.nextInt(100) + 1;
    });
  }

  // Clear text in TextField
  void _clearText() {
    _myController.clear();
    _focusNode.requestFocus();
  }

  // Make a guess
  void _makeGuess() {
    _focusNode.unfocus();
    int input = int.tryParse(_myController.text);
    if (input != null) {
      // Update guessed number
      setState(() {
        _guess = input;
      });
      // Show popup if guess was correct
      if (_compareGuess() == 0) {
        showDialog(
          context: context,
          builder: (BuildContext context) => _buildPopupDialog(context),
        );
      }
    } else {
      setState(() {
        _guess = null;
      });
    }
  }

  // Make guess or reset secret number if guess was correct
  void _performAction() {
    _guess == null ? _makeGuess() : _compareGuess() == 0 ? _generateSecret() : _makeGuess();
  }

  // Text displayed based on guess
  String _guessText() {
    return _guess == null
        ? ''
        : _guess > 100
        ? 'Your guess is invalid'
        : _guess < 1
        ? 'Your guess is invalid'
        : _compareGuess() == 0
        ? 'You tried $_guess\nYou guessed right.'
        : _compareGuess() < 0
        ? 'You tried $_guess\nTry higher'
        : 'You tried $_guess\nTry lower';
  }

  // Create dialog popup window when guess is correct
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: Text('You guessed right'),
      content: Text('It was $_secretNum'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            _generateSecret();
          },
          child: Text('Try again!'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'I\'m thinking of a number between 1 and 100.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'It\'s your turn to guess my number!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Visibility(
                visible: _guess != null,
                child: Text(
                  _guessText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 250,
              child: Card(
                shadowColor: Colors.black,
                elevation: 25.0,
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Try a number!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                                    color: Colors.grey,
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
                      margin: EdgeInsets.all(20.0),
                      width: 200.0,
                      height: 50.0,
                      decoration: BoxDecoration(color: Colors.blue.withOpacity(0.75)),
                      child: InkWell(
                        splashColor: Colors.blueAccent,
                        onTap: _performAction,
                        child: Center(
                          child: Text(
                            _guess == null ? 'Guess' : _compareGuess() == 0 ? 'Reset' : 'Guess',
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
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();

  // Clear TextField text
  void _clearText() {
    _myController.clear();
    _focusNode.requestFocus();
  }

  // Check type of given number
  void _checkNumber() {
    if (_myController.text.isEmpty) {
      return;
    }
    _focusNode.unfocus();
    int input = int.tryParse(_myController.text);
    if (input != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialog(context, input),
      );
    }
  }

  // Check if number is square
  bool _isSquare(int number) {
    int sr = sqrt(number).round();
    return sr * sr == number;
  }

  // Check if number is triangular
  bool _isTriangular(int number) {
    for (int i = 0; pow(i, 3) <= number; i++) {
      if (pow(i, 3) == number) {
        return true;
      }
    }
    return false;
  }

  // Build popup with number type
  Widget _buildPopupDialog(BuildContext context, int input) {
    return new AlertDialog(
      title: Text(
        '$input',
        style: TextStyle(
          fontSize: 25.0
        ),
      ),
      content: Text(
        !_isSquare(input) && !_isTriangular(input)
        ? 'Number $input is neither TRIANGULAR nor SQUARE.'
        : _isSquare(input) && _isTriangular(input)
        ? 'Number $input is both SQUARE and TRIANGULAR.'
        : _isSquare(input)
        ? 'Number $input is SQUARE.'
        : 'Number $input is TRIANGULAR.',
        style: TextStyle(
          fontSize: 20.0
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                'Please input a number to see if it is square or triangular.',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25.0,
                ),
              ),
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
                            color: Colors.grey,
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
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder()
                ),
                onPressed: _checkNumber,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.check
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
