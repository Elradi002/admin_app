import 'package:admin_app/models/constants.dart';
import 'package:flutter/material.dart';

class ClinicDetailsScreen extends StatelessWidget {
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
                      'الاسم : ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'الموقع : ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'زمن العيادة : ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'متاح للحجز : ',
                      style: kLargeTittle,
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Container(
                        height: 40,
                        width: 100,
                        child: MaterialButton(
                          onPressed: () {},
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
                    )
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
