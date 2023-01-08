import 'package:admin_app/models/constants.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  static const routeName = 'patient-details-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.teal),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'بيانات المريض',
          style: kXLargeTittle,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'الاسم : ادم محمد مدني',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'السكن : ام درمان',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'رقم الهاتف : 0909095675',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'نوع الحجز : مباشر ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'زمن الحجز : 8-10 PM ',
                        style: kLargeTittle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        ' العيادة : المسائية',
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
                height: 110,
                child: const Text(
                  'كان الادمان بالنسبة لي هو كل شيء في حياتي، ولكننى لم أكن سعيداً بحياتي، وكلما كنت اشعر باليأس أكثر، كنت أقوم بتعاطي المخدرات لنسيان ما كنت أشعر به، ولكنني اتساءل الان، هل كانت تلك الطريقة الصحيحة للتعامل مع هذه المشاعر السلبية؟',
                  style: kDetailsText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
