import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> userExsest(String username) async {
  final query = await FirebaseFirestore.instance
      .collection('Users')
      .where('UserName', isEqualTo: username)
      .get();

  return query.docs.isNotEmpty;
}