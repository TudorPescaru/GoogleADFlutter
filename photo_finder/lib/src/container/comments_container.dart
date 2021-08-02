import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Comment>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Comment>>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.comments.toList()..sort((Comment a, Comment b) => b.createdAt.compareTo(a.createdAt));
      },
    );
  }
}
