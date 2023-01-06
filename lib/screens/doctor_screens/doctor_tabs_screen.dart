import 'package:admin_app/screens/doctor_screens/doctor_personal_profile.dart';
import 'package:admin_app/screens/doctor_screens/patients_screen.dart';
import 'package:flutter/material.dart';

import 'clinics_screen.dart';

class DoctorTabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';

  const DoctorTabsScreen({super.key});
  @override
  State<StatefulWidget> createState() => _DoctorTabsScreenState();
}

class _DoctorTabsScreenState extends State<DoctorTabsScreen> {
  final List<Map> _screens = [
    {'screen': PatientsScreen(), 'title': 'المرضى'},
    {'screen': ClinicsScreen(), 'title': 'العيادات'},
    {'screen': const DoctorPersonalProfile(), 'title': 'العيادات'},
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
                Icons.hotel_sharp,
              ),
              label: 'المرضى',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.handshake_outlined,
              ),
              label: 'العيادات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
              ),
              label: 'الحساب',
            ),
          ],
        ),
      ),
    );
  }
}
