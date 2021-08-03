import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/container/user_container.dart';
import 'package:photo_finder/src/models/index.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser? user) {
          return Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    clipBehavior: Clip.hardEdge,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Press the photo to change it!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () async {
                      final XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery, maxWidth: 500);
                      if (file == null) {
                        return;
                      }
                      StoreProvider.of<AppState>(context).dispatch(UpdateProfilePhoto(file.path));
                    },
                    child: CircleAvatar(
                      radius: 75,
                      child: Text(
                        user != null ? user.username[0].toUpperCase() : 'U',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                        ),
                      ),
                      backgroundColor: Colors.black,
                      foregroundImage: user != null && user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    clipBehavior: Clip.hardEdge,
                    child: TextButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const SignOut());
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sign Out!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
