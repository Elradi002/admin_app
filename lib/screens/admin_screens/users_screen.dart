import 'package:flutter/material.dart';

import '../../models/constants.dart';
import '../../models/user_info.dart';
import '../../widgets/admin_main_drawer.dart';

class UsersScreen extends StatelessWidget {
  List<UserInfo> userDummyData = [
    UserInfo(
        name: 'احمد علي غالي', age: 25, place: 'الخرطوم', phone: 01222309897),
    UserInfo(
        name: 'احمد علي غالي', age: 25, place: 'الخرطوم', phone: 01222309897),
    UserInfo(
        name: 'احمد علي غالي', age: 25, place: 'الخرطوم', phone: 01222309897),
    UserInfo(
        name: 'احمد علي غالي', age: 25, place: 'الخرطوم', phone: 01222309897),
  ];

  UsersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'المستخدمين',
          style: kXLargeTittle,
        ),
        iconTheme: IconThemeData(color: Colors.teal),
      ),
      drawer: const AdminMainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView.builder(
          itemCount: userDummyData.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {
                // Navigator.of(context).pushNamed(
                //   FoundItemDetailsScreen.routeName,
                //   arguments: index,
                // );
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
                          userDummyData[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: kLargeTittle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' العمر :${userDummyData[index].age}',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.place_outlined,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  userDummyData[index].place,
                                  overflow: TextOverflow.ellipsis,
                                  style: kDetailsText,
                                ),
                              ],
                            ),
                            Row(children: [
                              Icon(
                                Icons.phone_in_talk,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                userDummyData[index].phone.toString(),
                                overflow: TextOverflow.ellipsis,
                                style: kDetailsText,
                              ),
                            ]),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        actionsAlignment:
                                            MainAxisAlignment.center,
                                        title: const Center(
                                          child: Text(
                                            ' تحذير !',
                                            style: kXLargeTittle,
                                          ),
                                        ),
                                        content: const SizedBox(
                                          height: 100,
                                          width: 100,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "هل متأكد من حذف المستخدم ؟",
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
                                                                      Icons
                                                                          .check,
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
                                                                  'تم الحذف بنجاح',
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
                                                            child:
                                                                MaterialButton(
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
                                                              child:
                                                                  const Center(
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
                                                  'تأكيد',
                                                  style: kButtonTheme,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    });

                                //cccc
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                            )
                          ],
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
    );
  }
}
