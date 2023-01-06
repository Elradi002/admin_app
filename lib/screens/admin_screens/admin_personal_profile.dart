import 'package:flutter/material.dart';

import '../../models/constants.dart';

class AdminPersonalProfile extends StatelessWidget {
  const AdminPersonalProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: const Text('الحساب', style: kLargeTittle),
      // ),
      // drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('الحساب', style: kXLargeTittle),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.person_pin,
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'أحمد محمد أحمد',
                    style: kLargeTittle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'الاعدادات :',
              style: kLargeTittle,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.language,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'تغيير اللغة',
                  style: kLargeTittle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.password,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'تغيير كلمة المرور',
                  style: kLargeTittle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.power_settings_new,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'تسجيل خروج',
                  style: kLargeTittle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
