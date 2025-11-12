
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> createUser(String userId, String email) async {
    try {
      await _db.collection('users').doc(userId).set({
        'email': email,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> addPhoto(String userId, String imageUrl) async {
    try {
      await _db.collection('users').doc(userId).collection('photos').add({
        'imageUrl': imageUrl,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Stream<QuerySnapshot> getPhotos(String userId) {
    return _db.collection('users').doc(userId).collection('photos').orderBy('timestamp', descending: true).snapshots();
  }
}
