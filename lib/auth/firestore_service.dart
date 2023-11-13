import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> createUser(String email) async {
    try {
      await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .set({"id": _auth.currentUser!.uid, "email": email});
    } catch (err) {
      print(err);
    }
  }

  // Future<void> addTask(String task) async {
  //   try {
  //     var uid = Uuid().v4();
  //     await _firestore.collection('tasks').doc(uid).set({
  //       "id": uid,
  //       "task": task,
  //       "isDone": false,
  //     });
  //   } catch (err) {
  //     print(err);
  //   }
  // }

  // List getTask(AsyncSnapshot snapshot) {
  //   try {
  //     final todolist = snapshot.data!.docs.map((doc) {
  //       final data = doc.data() as Map<String, dynamic>;
  //       return ToDo(
  //         id: data['id'],
  //         task: data['task'],
  //         isDone: data['isDone'],
  //       );
  //     }).toList();

  //     return todolist;
  //   } on FirebaseException catch (e) {
  //     print("Failed with error '${e.code}': ${e.message}");
  //     return [];
  //   }
  // }
}