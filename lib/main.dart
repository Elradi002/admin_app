import 'package:admin_app/screens/admin_screens/admin_tabs_screen.dart';
import 'package:admin_app/screens/doctor_screens/clinic_details_screen.dart';
import 'package:admin_app/screens/doctor_screens/doctor_tabs_screen.dart';
import 'package:admin_app/screens/doctor_screens/patient_details_screen.dart';
import 'package:admin_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/splash_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'admin_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
          accentColor: Colors.teal[400],
        ),
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''),
        //Locale('en', ''), // English, no country code
      ],
      home: const SplashScreen(),
      routes: {
        LoginScreen.routeName:(context) => const LoginScreen(),
        AdminTabsScreen.routeName: (context) => const AdminTabsScreen(),
        DoctorTabsScreen.routeName: (context) => const DoctorTabsScreen(),
        PatientDetailsScreen.routeName: (context) => PatientDetailsScreen(),
        ClinicDetailsScreen.routeName: (context) => const ClinicDetailsScreen(),
      },
    );
  }
}
