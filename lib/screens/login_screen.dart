import 'package:flutter/material.dart';
import './admin_screens/admin_tabs_screen.dart';
import './doctor_screens/doctor_tabs_screen.dart';
import '../models/constants.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/sign_in';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[200],
      //   centerTitle: true,
      //   elevation: 0,
      //   title: const Text('الحساب ', style: kXLargeTittle),
      // ),
      // drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'تسجيل الدخول ',
                style: kXLargeTittle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _mainForm(context),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'او قم بانشاء حساب جديد ! ',
                  style: kLargeTittle,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'انشاء !',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              } else if (val!.length < 8) {
                return 'يجب ان يكون الاسم اكثر من 8 حرف *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'اسم المستخدم',
              hintText: 'ادخل اسم المستخدم',
            ),
            controller: _nameController,
          ),
          const SizedBox(height: 20),
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return 'مطلوب *';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'كلمة المرور',
              hintText: 'ادخل كلمة المرور',
            ),
            controller: _passwordController,
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              if(_nameController.text == 'admin'){
                Navigator.pushNamed(context, AdminTabsScreen.routeName);
              }else{
                Navigator.pushNamed(context, DoctorTabsScreen.routeName);
              }

              // if (_key.currentState != null && _key.currentState!.validate()) {
              //   context
              //       .read<ItemProvider>()
              //       .addFound(
              //         LostItem(
              //           id: '',
              //           name: _nameController.text,
              //           type: _typeController.text,
              //           place: _placeController.text,
              //           phoneNumber: int.parse(_phoneController.text),
              //           description: _descriptionController.text,
              //           date: _selectedDate,
              //         ),
              //       )
              //       .then((value) => ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //               content: Text(
              //                   translation(context).itemAddedSuccessfully))));
              //   Navigator.of(context).pop();
              // }
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).colorScheme.secondary,
            child: const Center(
              child: Text(
                'دخول',
                style: kButtonTheme,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isValidName(value) {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(value);
  }

  bool isValidPhone(value) {
    final nameRegExp = RegExp(r"[0-9]");
    return nameRegExp.hasMatch(value);
  }
}
