import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:photo_finder/src/models/index.dart';

class AuthApi {
  const AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore, required FirebaseStorage storage})
      : _auth = auth,
        _firestore = firestore,
        _storage = storage;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .doc('users/${user.uid}')
        .get();

    if (snapshot.data() == null) {
      return null;
    }

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> registerOrLogin(String email, String password) async {
    UserCredential result;

    try {
      result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
        result = await _auth.signInWithCredential(credential);
      } else {
        rethrow;
      }
    }

    AppUser? user = await getCurrentUser();

    if (user == null) {
      user = AppUser((AppUserBuilder b) {
        b
          ..uid = result.user!.uid
          ..username = email.split('@').first
          ..email = email
          ..photoUrl = result.user!.photoURL;
      });

      await _firestore //
          .doc('users/${user.uid}')
          .set(user.json);
    }

    return user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<String> updateProfilePhoto(String uid, String path) async {
    await _storage //
        .ref('users/$uid/profile.png')
        .putFile(File(path));

    final String url = await _storage //
        .ref('users/$uid/profile.png')
        .getDownloadURL();

    await _firestore //
        .doc('users/$uid')
        .update(<String, dynamic>{'photoUrl': url});

    return url;
  }

  Future<List<AppUser>> getUsers(List<String> uids) async {
    final List<AppUser> users = <AppUser>[];

    for (final String uid in uids) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
          .doc('users/$uid')
          .get();

      users.add(AppUser.fromJson(snapshot.data()));
    }

    return users;
  }
}
