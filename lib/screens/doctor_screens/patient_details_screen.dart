import 'package:admin_app/models/constants.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'بيانات المريض',
                  style: kXLargeTittle,
                ),
              ),
              const SizedBox(height: 15),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'الاسم : ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'السكن : ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'رقم الهاتف : ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'نوع الحجز : ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'زمن الحجز : ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'العيادة :',
                        style: kLargeTittle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'ملحوظة : ',
                style: kLargeTittle,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: 180,
                height: 100,
                child: const Text(
                  ' ملحوظة .....',
                  style: kDetailsText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
