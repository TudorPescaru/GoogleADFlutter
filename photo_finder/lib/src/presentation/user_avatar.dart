import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/container/user_container.dart';
import 'package:photo_finder/src/models/index.dart';

import 'login_page.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) {
                  return const LoginPage();
                }));
              },
              child: const CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                backgroundColor: Colors.black,
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(const SignOut());
            },
            child: CircleAvatar(
              child: Text(
                user.username[0].toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ),
        );
      },
    );
  }
}
