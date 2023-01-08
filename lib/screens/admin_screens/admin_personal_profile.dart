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
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        title: const Center(
                          child: Text(
                            'تغيير كلمة المرور',
                            style: kXLargeTittle,
                          ),
                        ),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 200,
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'ادخل كلمة المرور القديمة',
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'ادخل كلمة المرور الجديدة',
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'أكد كلمة المرور الجديدة',
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        actionsAlignment:
                                            MainAxisAlignment.center,
                                        content: SizedBox(
                                          height: 200,
                                          width: 150,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 100,
                                                  width: 100,
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .secondary,
                                                    child: const Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 100,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  'تم التغيير بنجاح',
                                                  style: kLargeTittle,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          SizedBox(
                                            height: 40,
                                            width: 60,
                                            child: MaterialButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              shape: const StadiumBorder(),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              child: const Center(
                                                child: Text(
                                                  'OK',
                                                  style: kButtonTheme,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              shape: const StadiumBorder(),
                              color: Theme.of(context).colorScheme.secondary,
                              child: const Center(
                                child: Text(
                                  'تغيير',
                                  style: kButtonTheme,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Row(
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
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        title: const Center(
                          child: Text(
                            'تحذير !!',
                            style: kXLargeTittle,
                          ),
                        ),
                        content: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Text(
                                'اغلاق ؟',
                                style: kLargeTittle,
                              ),
                            ),
                          ),
                        ),
                        actions: [
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              shape: const StadiumBorder(),
                              color: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'نعم',
                                style: kButtonTheme,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              shape: const StadiumBorder(),
                              color: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'لا',
                                style: kButtonTheme,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Row(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
