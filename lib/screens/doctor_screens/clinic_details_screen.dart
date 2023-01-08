import 'package:admin_app/models/constants.dart';
import 'package:flutter/material.dart';

import 'doctor_tabs_screen.dart';

class ClinicDetailsScreen extends StatelessWidget {
  static const routeName = 'clinic-details-screen';
  const ClinicDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'بيانات العيادة',
                style: kXLargeTittle,
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'الاسم : عيادة الامل ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'الموقع : الخرطوم ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'زمن العيادة : 9-AM 11 ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'متاح للحجز : متاح',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: MaterialButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actionsAlignment:
                                          MainAxisAlignment.center,
                                      title: const Center(
                                        child: Text(
                                          'تعديل العيادة',
                                          style: kXLargeTittle,
                                        ),
                                      ),
                                      content: SizedBox(
                                        height: 250,
                                        width: 300,
                                        //color: Colors.blue,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'موقع العيادة',
                                                ),
                                                onTap: () {},
                                              ),
                                              const SizedBox(height: 10),
                                              TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'مواعيد العيادة',
                                                ),
                                                onTap: () {},
                                              ),
                                              const SizedBox(height: 10),
                                              TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'نوع العيادة',
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
                                                          MainAxisAlignment
                                                              .center,
                                                      content: SizedBox(
                                                        height: 200,
                                                        width: 150,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                height: 100,
                                                                width: 100,
                                                                child:
                                                                    CircleAvatar(
                                                                  backgroundColor: Theme.of(
                                                                          context)
                                                                      .colorScheme
                                                                      .secondary,
                                                                  child:
                                                                      const Icon(
                                                                    Icons.check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 100,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              const Text(
                                                                'تمت الاضافة بنجاح',
                                                                style:
                                                                    kLargeTittle,
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
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            shape:
                                                                const StadiumBorder(),
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            child: const Center(
                                                              child: Text(
                                                                'OK',
                                                                style:
                                                                    kButtonTheme,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  });
                                            },
                                            shape: const StadiumBorder(),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            child: const Center(
                                              child: Text(
                                                'تعديل',
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
                            child: const Text(
                              'تعديل',
                              style: kButtonTheme,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: MaterialButton(
                            onPressed: () {
                              // Navigator.of(context).pushNamed(
                              //   DoctorTabsScreen.routeName,
                              //);
                            },
                            shape: const StadiumBorder(),
                            color: Theme.of(context).colorScheme.secondary,
                            child: const Center(
                              child: Text(
                                'تعطيل',
                                style: kButtonTheme,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                DoctorTabsScreen.routeName,
                              );
                            },
                            shape: const StadiumBorder(),
                            color: Theme.of(context).colorScheme.secondary,
                            child: const Center(
                              child: Text(
                                'خروج',
                                style: kButtonTheme,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
