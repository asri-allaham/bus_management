import 'package:bus_management/Provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 225, 255, 252),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Image.asset('images/logo.png', width: 100, height: 100),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الصفحة الرئيسية'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          if (Provider.of<UserProvider>(context).role == 'مدير') ...[
            ListTile(
            leading: Icon(Icons.person),
            title: Text(' تسجيل مستخدم جديد'),
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(' سجل الرحلات '),
            onTap: () {
              Navigator.pushNamed(context, "/travelHistory");
            },
          ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('إدارة المستخدمين'),
              onTap: () {
                Navigator.pushNamed(context, '/manageUsers');
              },
            ),
          ],
         
          ListTile(
            leading: Icon(Icons.login),
            title: Text('تسجيل الخروج'),
            onTap: () {
              Provider.of<UserProvider>(context, listen: false).clearUsername();
              Provider.of<UserProvider>(context, listen: false).clearUserRole();
              // Navigate to the login screen
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم تسجيل الخروج بنجاح')),
              );
              // Clear the username and role from the provider
              Navigator.pushReplacementNamed(context, '/login');

            },
          ),
        ],
      ),
    );
  }
}
