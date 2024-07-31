import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopsphere/features/personalization/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //Fun to save in firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
    // on FirebaseException catch(e){
    //   throw SFirebaseException(e.code).message;
    // }on FormatException catch(_){
    //   throw SFormatException();
    // }on PlatformException catch(e){
    //   throw SPlatformException(e.code).message;
    // }
  }
}
