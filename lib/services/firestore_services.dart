import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  //create a new user document
  Future<void> createUser(String userId, Map<String, dynamic> userData) async {
    await _db.collection('users').doc(userId).set(userData);
  }

  //read a user document
  Future<DocumentSnapshot> getUser(String userId) async {
    return await _db.collection('users').doc(userId).get();
  }

  //update a user document
  Future<void> updateUser(String userId, Map<String, dynamic> userData) async {
    await _db.collection('users').doc(userId).update(userData);
  }

  //delete a user document
  Future<void> deleteUser(String userId) async {
    await _db.collection('users').doc(userId).delete();
  }

  //read all user documents
  Future<List<DocumentSnapshot>> getAllUsers() async {
    QuerySnapshot querySnapshot = await _db.collection('users').get();
    return querySnapshot.docs;
  }

  String uId() {
    return _db.collection('users').doc().id;
  }
}
