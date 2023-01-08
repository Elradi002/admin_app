import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/tabs-screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Card(
                shape: CircleBorder(),
                color: Colors.blueGrey,
                child: Image(
                  width: 400,
                  height: 400,
                  image: AssetImage('3afir.jpg'),
                  fit: BoxFit.cover,
                )
                // Icon(
                //   Icons.medical_services,
                //   size: 100,
                // ),
                ),
            SizedBox(
              height: 20,
            ),
            Text(
              'عشــان بنـريــدك ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
