import 'package:admin_app/models/clinic_info.dart';
import 'package:flutter/material.dart';

import '../../models/constants.dart';
import '../../widgets/doctor_main_drawer.dart';
import 'clinic_details_screen.dart';

class ClinicsScreen extends StatelessWidget {
  static const routeName = 'clinics-screen';
  List<ClinicInfo> clinicDummyData = [
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
    ClinicInfo(name: 'عيادة الامل', place: 'مدني'),
  ];
  ClinicsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('العيادات'),
      ),
      drawer: const DoctorMainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: ListView.builder(
          itemCount: clinicDummyData.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ClinicDetailsScreen.routeName,
                );
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          clinicDummyData[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: kLargeTittle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          clinicDummyData[index].place,
                          overflow: TextOverflow.ellipsis,
                          style: kDetailsText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actionsAlignment: MainAxisAlignment.center,
                  title: const Text(
                    'اضافة عيادة',
                    style: kXLargeTittle,
                  ),
                  content: SizedBox(
                    height: 250,
                    width: 300,
                    //color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'موقع العيادة :',
                                style: kLargeTittle,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Text('مواعيد العيادة :',
                                  style: kLargeTittle),
                              const SizedBox(width: 10),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Text('نوع العيادة :', style: kLargeTittle),
                              const SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ],
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
                                  actionsAlignment: MainAxisAlignment.center,
                                  content: SizedBox(
                                    height: 200,
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            child: CircleAvatar(
                                              backgroundColor: Theme.of(context)
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
                                            'تمت الاضافة بنجاح',
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
                            'اضافة',
                            style: kButtonTheme,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
