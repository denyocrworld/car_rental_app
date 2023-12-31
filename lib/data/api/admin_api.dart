import 'package:car_rental_app/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminApi {
  static Future getAdminUid() async {
    var snapshot = await FirebaseFirestore.instance.collection(collection.adminCollection).get();
    return snapshot.docs[0]["uid"];
  }
}
