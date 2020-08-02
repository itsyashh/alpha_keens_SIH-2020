import 'package:cloud_firestore/cloud_firestore.dart';

class AddFeedback {
  Future<void> addData(userFeedback) async {
    Firestore.instance.collection('feedback').add(userFeedback).catchError((e) {
      print(e);
    });
  }
}
