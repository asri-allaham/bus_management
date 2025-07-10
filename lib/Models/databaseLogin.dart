
import 'package:bus_management/Provider/UserProvider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

/// Searches for a user in the Firestore database based on the provided username and password.
/// Returns true if the user is found, otherwise returns false.
/// This function also sets the username and user role in the UserProvider context.
   Future<bool> searchUser(String username,String Password,BuildContext context) async {

    final query = await FirebaseFirestore.instance
        .collection('Users')
        .where('UserName', isEqualTo: username)
        .where('Password', isEqualTo: Password)
        .get();

    if (query.docs.isNotEmpty) {
          Provider.of<UserProvider>(context, listen: false).setUsername(username);
          final userDoc = query.docs.first;
    final role = userDoc['Role'];
              Provider.of<UserProvider>(context, listen: false).setUserRole(role);

      
    return true;

    }  else {
           return false;

    }
  }