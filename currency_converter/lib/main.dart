import 'package:flutter/material.dart';

void main() {
  runApp(const CurrencyConverter());
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key key}) : super(key: key);

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  int _selectedIndex;
  String _displayCurrency;
  String _validInput;
  static const double eur2ron = 4.9253;
  static const double usd2ron = 4.0683;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
    _displayCurrency = null;
    _validInput = null;
  }

  // Change currency to convert from
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _displayCurrency = null;
      _validInput = null;
    });
    _myController.clear();
  }

  // Clear text in TextField
  void _clearText() {
    setState(() {
      _displayCurrency = _selectedIndex == 0 ? 'EUR' : 'USD';
      _validInput = null;
    });
    _myController.clear();
    _focusNode.requestFocus();
  }

  // Display flag based on selected currency
  String _displayFlag() {
    if (_selectedIndex == 0) {
      return 'assets/eur.png';
    } else {
      return 'assets/usd.png';
    }
  }

  // Convert given sum from selected currency
  void _convert() {
    _focusNode.unfocus();
    double input;
    if (_myController.text.isNotEmpty && _displayCurrency.compareTo('RON') != 0) {
      try {
        input = double.parse(_myController.text);
      } catch (e) {
        setState(() {
          _validInput = 'Invalid input!';
        });
        return;
      }
      final double converted = _selectedIndex == 0 ? input * eur2ron : input * usd2ron;
      setState(() {
        _myController.text = converted.toStringAsFixed(2);
        _displayCurrency = 'RON';
      });
    } else if (_myController.text.isNotEmpty) {
      setState(() {
        _validInput = 'Already converted!';
      });
    } else {
      setState(() {
        _validInput = 'Please input a number!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: const Center(
              child: Text(
                'Currency Converter',
              ),
            ),
          ),
          body: Container(
            color: Colors.grey.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                  Image.asset(
                    _displayFlag(),
                    width: 100,
                    height: 100,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 75,
                    color: Colors.black54,
                  ),
                  Image.asset(
                    'assets/ron.png',
                    width: 100,
                    height: 100,
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  width: 400,
                  child: TextField(
                    focusNode: _focusNode,
                    controller: _myController,
                    keyboardType: TextInputType.number,
                    onTap: _clearText,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 2, style: BorderStyle.solid, color: Colors.black45),
                      ),
                      fillColor: Colors.black26,
                      filled: true,
                      hintText: 'Enter amount...',
                      hintStyle: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                      suffixText: _displayCurrency,
                      errorText: _validInput,
                      errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 2, style: BorderStyle.solid, color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 2, style: BorderStyle.solid, color: Colors.black45),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black26.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: _convert,
                    splashColor: Colors.amberAccent,
                    child: const Center(
                      child: Text(
                        'Convert',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black54,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.euro), label: 'Euro'),
              BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Dollar'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
