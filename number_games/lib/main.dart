import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const NumberGames());
}

class NumberGames extends StatefulWidget {
  const NumberGames({Key? key}) : super(key: key);

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
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Games',
                      style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
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
                  title: const Text(
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
              ? const GuessingGame()
              : _selectedPerfect
                  ? const PerfectNum()
                  : const Center(
                      child: Text(
                        'Simple Number Game App',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
        ),
      ),
    );
  }
}

class GuessingGame extends StatefulWidget {
  const GuessingGame({Key? key}) : super(key: key);

  @override
  _GuessingGameState createState() => _GuessingGameState();
}

class _GuessingGameState extends State<GuessingGame> {
  late int _guess;
  late int _secretNum;
  final Random _random = Random();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _guess = Null as int;
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
      _guess = Null as int;
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
    final int input = int.tryParse(_myController.text)!;
    if (input != null) {
      // Update guessed number
      setState(() {
        _guess = input;
      });
      // Show popup if guess was correct
      if (_compareGuess() == 0) {
        showDialog<Widget>(
          context: context,
          builder: (BuildContext context) => _buildPopupDialog(context),
        );
      }
    } else {
      setState(() {
        _guess = Null as int;
      });
    }
  }

  // Make guess or reset secret number if guess was correct
  void _performAction() {
    _guess == null
        ? _makeGuess()
        : _compareGuess() == 0
            ? _generateSecret()
            : _makeGuess();
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
    return AlertDialog(
      title: const Text('You guessed right'),
      content: Text('It was $_secretNum'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            _generateSecret();
          },
          child: const Text('Try again!'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
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
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: const Text(
                "I'm thinking of a number between 1 and 100.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 25.0, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Text(
                "It's your turn to guess my number!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 25.0, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Visibility(
                visible: _guess != null,
                child: Text(
                  _guessText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey, fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Card(
                shadowColor: Colors.black,
                elevation: 25.0,
                color: Colors.white,
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Text(
                        'Try a number!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          focusNode: _focusNode,
                          controller: _myController,
                          keyboardType: TextInputType.number,
                          onTap: _clearText,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Make a guess...',
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0, style: BorderStyle.solid)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      width: 200.0,
                      height: 50.0,
                      decoration: BoxDecoration(color: Colors.blue.withOpacity(0.75)),
                      child: InkWell(
                        splashColor: Colors.blueAccent,
                        onTap: _performAction,
                        child: Center(
                          child: Text(
                            _guess == null
                                ? 'Guess'
                                : _compareGuess() == 0
                                    ? 'Reset'
                                    : 'Guess',
                            style: const TextStyle(fontSize: 20.0, color: Colors.black54, fontWeight: FontWeight.bold),
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
  const PerfectNum({Key? key}) : super(key: key);

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
    final int input = int.tryParse(_myController.text)!;
    if (input != null) {
      showDialog<Widget>(
        context: context,
        builder: (BuildContext context) => _buildPopupDialog(context, input),
      );
    }
  }

  // Check if number is square
  bool _isSquare(int number) {
    final int sr = sqrt(number).round();
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
    return AlertDialog(
      title: Text(
        '$input',
        style: const TextStyle(fontSize: 25.0),
      ),
      content: Text(
        !_isSquare(input) && !_isTriangular(input)
            ? 'Number $input is neither TRIANGULAR nor SQUARE.'
            : _isSquare(input) && _isTriangular(input)
                ? 'Number $input is both SQUARE and TRIANGULAR.'
                : _isSquare(input)
                    ? 'Number $input is SQUARE.'
                    : 'Number $input is TRIANGULAR.',
        style: const TextStyle(fontSize: 20.0),
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
              margin: const EdgeInsets.all(20.0),
              child: const Text(
                'Please input a number to see if it is square or triangular.',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25.0,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  focusNode: _focusNode,
                  controller: _myController,
                  keyboardType: TextInputType.number,
                  onTap: _clearText,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Input a number...',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent, width: 2.0, style: BorderStyle.solid)),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                onPressed: _checkNumber,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  alignment: Alignment.center,
                  child: const Icon(Icons.check),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
