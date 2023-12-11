import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class DatabaseServiceTest{

}

class CollectionService extends DatabaseServiceTest {
  CollectionService();
  final CollectionReference lostItemCollection = FirebaseFirestore.instance.collection('lostItems');
  
  Future getAllLostItemData() async {
    return await lostItemCollection.orderBy('itemName').get().then(
      (querySnapshot) {
        return querySnapshot.docs.map((item) => item.data()).toList();
        // print("Successfully completed");
        // for (var docSnapshot in querySnapshot.docs) {
        //   print('${docSnapshot.id} => ${docSnapshot.data()}');
        //   docSnapshot.map((item) => item.data).toList();
        // }
      },
    onError: (e) => print("Error completing: $e"),
    );
  }
}