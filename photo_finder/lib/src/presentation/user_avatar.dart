import 'package:flutter/material.dart';
import 'package:photo_finder/src/container/user_container.dart';
import 'package:photo_finder/src/models/index.dart';

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
                Navigator.pushNamed(context, '/login');
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
            onTap: () async {
              Navigator.pushNamed(context, '/profile');
            },
            child: CircleAvatar(
              child: Text(
                user.username[0].toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.black,
              foregroundImage: user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
            ),
          ),
        );
      },
    );
  }
}
