import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/presentation/content_page.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  void _clearText() {
    _controller.clear();
    _focusNode.requestFocus();
  }

  void _search() {
    final String query = _controller.text;
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(SearchPhotos(query));
    store.dispatch(const GetPhotos());
    _focusNode.unfocus();
    Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) {
      return const ContentPage();
    }));
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PhotoFinder',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: 300,
          child: Material(
            elevation: 20.0,
            borderRadius: BorderRadius.circular(10.0),
            clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    focusNode: _focusNode,
                    controller: _controller,
                    onTap: _clearText,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'What would you like to see?',
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.black,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.black,
                      )),
                    ),
                  ),
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextButton(
                    onPressed: _search,
                    child: const Text(
                      'Search!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
