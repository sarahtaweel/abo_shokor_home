import 'package:flutter/material.dart';
import 'package:abo_shokor_home/screens/homescreen.dart';
import 'package:get/get.dart';
import 'package:abo_shokor_home/screens/cart.dart';
import 'package:abo_shokor_home/screens/branch_screen.dart';
import 'package:abo_shokor_home/screens/sharing_screen.dart';
import 'package:abo_shokor_home/screens/us.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('الاسم الكامل'),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 131, 24, 138)),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('الملف الشخصي'),
            onTap: () => ('1'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('السلة'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('المفضلة'),
            onTap: () => ('1'),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('الأقسام'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('الفروع'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BranchPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('مشاركة التطبيق'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SharingPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_answer),
            title: const Text('من نحن'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Us()),
              );
            },
          ),
        ],
      ),
    );
  }
}
