import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/container/comments_container.dart';
import 'package:photo_finder/src/container/is_loading_container.dart';
import 'package:photo_finder/src/container/photo_container.dart';
import 'package:photo_finder/src/container/query_container.dart';
import 'package:photo_finder/src/container/user_container.dart';
import 'package:photo_finder/src/container/users_container.dart';
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IsLoadingContainer(
                                builder: (BuildContext context, bool isLoading) {
                                  if (isLoading) {
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.black,
                                      ),
                                    );
                                  }
                                  return UsersContainer(
                                    builder: (BuildContext context, Map<String, AppUser> users) {
                                      return CommentsContainer(builder: (BuildContext context, List<Comment> comments) {
                                        return ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: comments.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            final Comment comment = comments[index];
                                            final AppUser? user = users[comment.uid];
                                            return Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                                              child: Material(
                                                elevation: 5.0,
                                                borderRadius: BorderRadius.circular(10.0),
                                                clipBehavior: Clip.hardEdge,
                                                child: ListTile(
                                                  leading: CircleAvatar(
                                                    child: Text(
                                                      user != null ? user.username[0].toUpperCase() : 'U',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    backgroundColor: Colors.black,
                                                    foregroundImage: user != null && user.photoUrl != null
                                                        ? NetworkImage(user.photoUrl!)
                                                        : null,
                                                  ),
                                                  title: Text(
                                                    '${user == null ? '' : user.username}: ${comment.text}',
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    comment.createdAt.toLocal().toString(),
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 64,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton.extended(
                    onPressed: () async {
                      if (appUser == null) {
                        Navigator.pushNamed(context, '/login');
                      } else {
                        await Navigator.pushNamed(context, '/comment');
                        StoreProvider.of<AppState>(context).dispatch(const GetComments());
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
