import 'package:flutter/material.dart';

class TravleHistory extends StatefulWidget {
  const TravleHistory({super.key});

  @override
  State<TravleHistory> createState() => _TravleHistoryState();
}

class _TravleHistoryState extends State<TravleHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('سجل الرحلات'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', width: 300, height: 300),
            const SizedBox(height: 20),
            const Text(
              'لا توجد رحلات مسجلة حتى الآن',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
