import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/presentation/user_avatar.dart';

class AddCommentPage extends StatefulWidget {
  const AddCommentPage({Key? key}) : super(key: key);

  @override
  _AddCommentPageState createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Add Comment',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const UserAvatar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Comment',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                cursorColor: Colors.black,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a comment!';
                  }
                  if (value.length < 2) {
                    return 'Please enter a valid comment!';
                  }
                  return null;
                },
              ),
              Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      clipBehavior: Clip.hardEdge,
                      child: TextButton(
                        onPressed: () {
                          if (!Form.of(context)!.validate()) {
                            return;
                          }
                          StoreProvider.of<AppState>(context).dispatch(CreateComment(_controller.text));
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Post!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
