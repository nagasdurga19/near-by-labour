import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/labour.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Labour>> getNearbyLabours(double lat, double lng) async {
    final snapshot = await _db.collection('labours').get();
    return snapshot.docs.map((doc) => Labour.fromMap(doc.data())).toList();
  }
}
