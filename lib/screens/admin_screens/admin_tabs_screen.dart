import 'package:admin_app/screens/admin_screens/users_screen.dart';
import 'package:flutter/material.dart';

import 'doctors_screen.dart';

class AdminTabsScreen extends StatefulWidget {
  static const routeName = '/admin-tabs-screen';

  const AdminTabsScreen({super.key});
  @override
  State<StatefulWidget> createState() => _AdminTabsScreenState();
}

class _AdminTabsScreenState extends State<AdminTabsScreen> {
  final List<Map> _screens = [
    {'screen': UsersScreen(), 'title': 'المستخدمين'},
    {'screen': DoctorsScreen(), 'title': 'الاطباء'},
  ];
  int _selectedScreenIndex = 0;
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Theme.of(context).colorScheme.primary,
          onTap: _selectScreen,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedScreenIndex,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_outline,
              ),
              label: 'المستخدمين',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_information_outlined,
              ),
              label: 'الاطباء',
            ),
          ],
        ),
      ),
    );
  }
}
