import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GamePage(),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late String _turnText;
  late List<List<int>> _gameState;
  late List<int> _rows, _cols;
  late int _turn, _dPrimary, _dSecondary;

  @override
  void initState() {
    super.initState();
    _turn = 1;
    _gameState = List<List<int>>.generate(3, (int i) => List<int>.generate(3, (int j) => 0));
    _turnText = 'X makes first move';
    _rows = List<int>.generate(3, (int index) => 0);
    _cols = List<int>.generate(3, (int index) => 0);
    _dPrimary = 0;
    _dSecondary = 0;
  }

  // Color box based on who ticked it
  Color _getBoxColor(int index) {
    return _gameState[index ~/ 3][index % 3] == 0 ? Colors.white :
      _gameState[index ~/ 3][index % 3] == 1 ? Colors.green : Colors.red;
  }

  // Create border for box
  Border _getBoxBorder(int index) {
    return Border(
      top: index ~/ 3 == 0 ? BorderSide.none : const BorderSide(width: 5.0, color: Colors.amber),
      left: index % 3 == 0 ? BorderSide.none : const BorderSide(width: 5.0, color: Colors.amber),
      right: index % 3 == 2 ? BorderSide.none : const BorderSide(width: 5.0, color: Colors.amber),
      bottom: index ~/ 3 == 2 ? BorderSide.none : const BorderSide(width: 5.0, color: Colors.amber)
    );
  }

  // Determine if game was won
  bool _winCondition() {
    // Check primary diagonal for three of the same color
    if (_dPrimary == 3 || _dPrimary == -3) {
      return true;
    }
    // Check secondary diagonal for three of the same color
    if (_dSecondary == 3 || _dSecondary == -3) {
      return true;
    }
    // Check if any row or any column contains three of the same color
    for (int i = 0; i < 3; i++) {
      if (_rows[i] == 3 || _rows[i] == -3) {
        return true;
      }
      if (_cols[i] == 3 || _cols[i] == -3) {
        return true;
      }
    }
    return false;
  }

  void _resetGame() {
    setState(() {
      for (int i = 0; i < 3; i++) {
        _rows[i] = 0;
        _cols[i] = 0;
        for (int j = 0; j < 3; j++) {
          _gameState[i][j] = 0;
        }
      }
      _dPrimary = 0;
      _dSecondary = 0;
      _turn = 1;
      _turnText = 'X makes first move';
    });
  }

  // Check a box
  void _tickBox(int index) {
    setState(() {
      // Update board with players value
      _gameState[index ~/ 3][index % 3] = _turn;
      // Update row, column and diagonal sums
      _rows[index ~/ 3] += _turn;
      _cols[index % 3] += _turn;
      if (index % 3 == 2 - index ~/ 3) {
        _dPrimary += _turn;
      }
      if (index ~/ 3 == index % 3) {
        _dSecondary += _turn;
      }
      // Check if game was won
      if (_winCondition()) {
        // Reset and display win message
        _resetGame();
        showDialog<Widget>(
            context: context,
            builder: _buildPopupDialog
        );
      } else {
        // Change player to move
        _turn = -_turn;
        _turnText = 'It is ${_turn == 1 ? "X's" : "O's"} turn!';
      }
    });
  }

  // Build popup dialog window showing game winner
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Game over!'),
      content: Text('${_turn == 1 ? "X's" : "O's"} wins!'),
      actions: <Widget>[
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            'TicTacToe'
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Text(
              _turnText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 3,
                children: List<Widget>.generate(9, (int index) {
                  return AnimatedContainer(
                    width: 50.0,
                    height: 50.0,
                    duration: const Duration(
                      milliseconds: 300
                    ),
                    decoration: BoxDecoration(
                      color: _getBoxColor(index),
                      border: _getBoxBorder(index)
                    ),
                    child: InkWell(
                      onTap: () => _tickBox(index),
                    ),
                  );
                }, growable: false),
              ),
            ),
          )
        ],
      ),
    );
  }
}

