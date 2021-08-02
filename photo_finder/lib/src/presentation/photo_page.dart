import 'package:flutter/material.dart';
import 'package:photo_finder/src/container/photo_container.dart';
import 'package:photo_finder/src/container/query_container.dart';
import 'package:photo_finder/src/container/user_container.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/presentation/user_avatar.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoContainer(
      builder: (BuildContext context, Photo photo) {
        return QueryContainer(
          builder: (BuildContext context, String query) {
            return UserContainer(
              builder: (BuildContext context, AppUser? appUser) {
                return Scaffold(
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    leading: const UserAvatar(),
                  ),
                  body: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width * 1.44,
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10.0),
                              clipBehavior: Clip.hardEdge,
                              child: Image.network(
                                photo.urls.regular,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10.0),
                              clipBehavior: Clip.hardEdge,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    CircleAvatar(
                                      foregroundImage: NetworkImage(photo.user.profileImage.large),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        photo.user.name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10.0),
                              clipBehavior: Clip.hardEdge,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        '${photo.likes}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10.0),
                              clipBehavior: Clip.hardEdge,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  photo.description != null ? photo.description! : 'Photo of $query',
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton.extended(
                    onPressed: () {
                      if (appUser == null) {
                        Navigator.pushNamed(context, '/login');
                      }
                    },
                    label: const Text('Comment'),
                    icon: const Icon(Icons.comment),
                    backgroundColor: Colors.black,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
