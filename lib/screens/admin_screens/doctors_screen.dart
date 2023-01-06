import 'package:flutter/material.dart';

import '../../models/constants.dart';
import '../../models/doctor.dart';
import '../../widgets/admin_main_drawer.dart';

class DoctorsScreen extends StatelessWidget {
  List<Doctor> doctorDummyData = [
    Doctor(
      name: 'الدكتور / مجدي حبيب يعقوب',
      age: 55,
      clinicPlace: 'الابيض',
      phoneNumber: 09876544345,
      description:
          "مجدي حبيب يعقوب (مواليد 16 نوفمبر 1935) هو بروفيسور مصري، وجراح قلب بارز. من مواليد مدينة بلبيس، محافظة الشرقية، مصر، لعائلة قبطية أرثوذكسية، وتنحدر أصولها من المنيا. درس الطب في جامعة القاهرة، وتعلم في شيكاغو، ثم انتقل إلى بريطانيا في عام 1962 ليعمل في مستشفى الصدر بلندن، ثم أصبح أخصائي جراحات القلب والرئتين في مستشفى هارفيلد .",
    ),
    Doctor(
      name: 'الدكتور / مجدي حبيب يعقوب',
      age: 55,
      clinicPlace: 'الابيض',
      phoneNumber: 09876544345,
      description:
          "مجدي حبيب يعقوب (مواليد 16 نوفمبر 1935) هو بروفيسور مصري، وجراح قلب بارز. من مواليد مدينة بلبيس، محافظة الشرقية، مصر، لعائلة قبطية أرثوذكسية، وتنحدر أصولها من المنيا. درس الطب في جامعة القاهرة، وتعلم في شيكاغو، ثم انتقل إلى بريطانيا في عام 1962 ليعمل في مستشفى الصدر بلندن، ثم أصبح أخصائي جراحات القلب والرئتين في مستشفى هارفيلد .",
    ),
    Doctor(
      name: 'الدكتور / مجدي حبيب يعقوب',
      age: 55,
      clinicPlace: 'الابيض',
      phoneNumber: 09876544345,
      description:
          "مجدي حبيب يعقوب (مواليد 16 نوفمبر 1935) هو بروفيسور مصري، وجراح قلب بارز. من مواليد مدينة بلبيس، محافظة الشرقية، مصر، لعائلة قبطية أرثوذكسية، وتنحدر أصولها من المنيا. درس الطب في جامعة القاهرة، وتعلم في شيكاغو، ثم انتقل إلى بريطانيا في عام 1962 ليعمل في مستشفى الصدر بلندن، ثم أصبح أخصائي جراحات القلب والرئتين في مستشفى هارفيلد .",
    ),
    Doctor(
      name: 'الدكتور / مجدي حبيب يعقوب',
      age: 55,
      clinicPlace: 'الابيض',
      phoneNumber: 09876544345,
      description:
          "مجدي حبيب يعقوب (مواليد 16 نوفمبر 1935) هو بروفيسور مصري، وجراح قلب بارز. من مواليد مدينة بلبيس، محافظة الشرقية، مصر، لعائلة قبطية أرثوذكسية، وتنحدر أصولها من المنيا. درس الطب في جامعة القاهرة، وتعلم في شيكاغو، ثم انتقل إلى بريطانيا في عام 1962 ليعمل في مستشفى الصدر بلندن، ثم أصبح أخصائي جراحات القلب والرئتين في مستشفى هارفيلد .",
    )
  ];

  DoctorsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('الاطباء'),
      ),
      drawer: const AdminMainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView.builder(
          itemCount: doctorDummyData.length,
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
                          doctorDummyData[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: kLargeTittle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' العمر :${doctorDummyData[index].age}',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          doctorDummyData[index].description,
                          style: kDetailsText,
                          overflow: TextOverflow.ellipsis,
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
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  doctorDummyData[index].clinicPlace,
                                  overflow: TextOverflow.ellipsis,
                                  style: kDetailsText,
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.phone_in_talk,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  doctorDummyData[index].phoneNumber.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: kDetailsText,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                //ccc

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
                                                "هل متأكد من حذف الطبيب ؟",
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actionsAlignment: MainAxisAlignment.center,
                  title: const Center(
                    child: Text(
                      'اضافة طبيب',
                      style: kXLargeTittle,
                    ),
                  ),
                  content: SizedBox(
                    height: 200,
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
                                'اسم الطبيب :',
                                style: kLargeTittle,
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
                              const Text(' العمر :', style: kLargeTittle),
                              const SizedBox(width: 45),
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
                              const Text(' الهاتف :', style: kLargeTittle),
                              const SizedBox(
                                width: 35,
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
