import 'package:admin_app/models/patient_info.dart';
import 'package:admin_app/screens/doctor_screens/patient_details_screen.dart';
import 'package:flutter/material.dart';

import '../../models/constants.dart';
import '../../widgets/doctor_main_drawer.dart';

class PatientsScreen extends StatelessWidget {
  List<PatientInfo> patientDummyData = [
    PatientInfo(
        name: 'احمد علي غالي',
        age: 25,
        note:
            'هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض'),
    PatientInfo(
        name: 'احمد علي غالي',
        age: 25,
        note:
            'هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض'),
    PatientInfo(
        name: 'احمد علي غالي',
        age: 25,
        note:
            'هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض'),
    PatientInfo(
        name: 'احمد علي غالي',
        age: 25,
        note:
            'هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض هنا ملاحظة المريض')
  ];
  PatientsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('المرضى'),
      ),
      drawer: const DoctorMainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'مرضى اليوم !',
                style: kXLargeTittle,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: patientDummyData.length,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          PatientDetailsScreen.routeName,
                          arguments: index,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Card(
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  patientDummyData[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  style: kLargeTittle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' العمر :${patientDummyData[index].age}',
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  patientDummyData[index].note,
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
            ],
          ),
        ),
      ),
    );
  }
}
