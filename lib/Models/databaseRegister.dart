
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

Future<void> addUser(String username,String firtsName,String lastName, String password, String role,String? email ,BuildContext context ) async {
  try {
    await FirebaseFirestore.instance.collection('Users').add({
      'UserName': username,
      'Password': password,
      'Role': role,
      'FirstName': firtsName,
      'LastName': lastName,
      'Email': email,
      'CreatedAt': Timestamp.now(),
    });
    print('User added successfully!');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('تم إضافة المستخدم بنجاح')),
    );

    Navigator.pushReplacementNamed(context, '/home');
  } catch (e) {
    print('Error adding user: $e');
  }
}

