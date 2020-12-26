import 'package:bth/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class FireStoreService {
  CollectionReference get _collectionReference =>
      // ignore: deprecated_member_use
      Firestore.instance.collection('users');

  Future createUser(User user) async {
    try {
      // ignore: deprecated_member_use
      await _collectionReference.document(user.id).setData(user.toJson());
    } catch (e) {
      // TODO: Find or create a way to repeat error handling without so much repeated code
      if (e is PlatformException) {
        return e.message;
      }

      return e.toString();
    }
  }

  Future getUser(String uid) async {
    try {
      // ignore: deprecated_member_use
      var userData = await _collectionReference.document(uid).get();
      return User.fromData(userData.data());
    } catch (e) {
      // TODO: Find or create a way to repeat error handling without so much repeated code
      if (e is PlatformException) {
        return e.message;
      }

      return e.toString();
    }
  }
}
