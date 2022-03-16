import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataBaseService extends ChangeNotifier {
  Future usersData(String name, String datatext) async {
    final brewCollection = FirebaseFirestore.instance.collection('users');
    final fuser = FirebaseAuth.instance;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss  EEE d MMM').format(now);
    return await brewCollection.doc(fuser.currentUser!.uid).set({
      'Name': name,
      'Datatext': datatext,
      'timestamp': formattedDate,
    });
  }

  Future studentsData(
      String name, String email, String birthDay, String notes) async {
    final rewCollection = FirebaseFirestore.instance.collection('peter');
    final fuser = FirebaseAuth.instance;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss  EEE d MMM').format(now);
    return await rewCollection
        .doc(fuser.currentUser!.uid)
        .collection('students')
        .add(<String, dynamic>{
      'name': name,
      'timestamp': formattedDate,
      'email': email,
      'birthDay': birthDay,
      'note': notes,
      'userId': FirebaseAuth.instance.currentUser!.uid.toUpperCase(),
    });
  }
}
