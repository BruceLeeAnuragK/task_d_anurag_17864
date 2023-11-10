import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_d_anurag_17864/Model/user_model.dart';

class FireStoreHelper {
  FireStoreHelper._();
  static final FireStoreHelper storeHelper = FireStoreHelper._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String collection = "User";
  String colusername = "username";
  String colemail = "email";

  addUser({required UserModel userModel}) {
    Map<String, dynamic> datas = {
      colusername: userModel.username,
      colemail: userModel.email,
    };
    firestore
        .collection(collection)
        .doc(userModel.username.toString())
        .set(datas);
  }
}
