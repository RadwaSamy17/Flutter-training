import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List<String> _data = [
    "وافق مطعم ديري كوين على طلب الحجز الخاص بك رقم 15537",
    "رفض مطعم تاكو بيل طلب الحجز الخاص بك رقم 73556 لعدم استكمال بياناتك",
    "تم إنهاء طلب الحجز الخاص بك رقم 62293 من مطعم ديري كوين",
    "تم إلغاء طلب الحجز الخاص بك رقم 62293 من مطعم ديري كوين بسبب عدم تأكيد الحجز من قبل المطعم",
    "تم إلغاء طلب الحجز الخاص بك رقم 62293 من مطعم ديري كوين بسبب عدم دفع مبلغ تأكيد الحجز"
  ];
  Widget _notificationlist(String t1, int i) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: i == 0 || i == 1
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).backgroundColor,
                        ),
                        Text(" PM  03:15 "),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(t1)
                  ]),
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(
          "الاشعارات",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).primaryColor,
              ))
        ],
      ),
      body: SizedBox(
        height: 1000,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (ctx, index) {
              return _notificationlist(_data[index], index);
            }),
      ),
    );
  }
}
