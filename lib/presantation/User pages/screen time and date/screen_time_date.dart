import 'dart:developer';

import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_range/time_range.dart';

import '../../../core/colors/colors.dart';
import '../screen patiants info/screen_patiants_info.dart';

class ScreenDateTime extends StatefulWidget {
  const ScreenDateTime({super.key});

  @override
  State<ScreenDateTime> createState() => _ScreenDateTimeState();
}

class _ScreenDateTimeState extends State<ScreenDateTime> {
  DateTime day = DateTime.now();

  List<String> timelist = [
    "9:30 - 10:00",
    "10:30 - 11:00",
    "11:30 - 12:00",
    "12:30 - 1:00",
    "1:30 - 2:00",
    "2:30 - 3:00",
    "3:30 - 4:00",
    "4:30 - 5:00",
    "5:30 - 6:00",
  ];
  int currebtintex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            title: const Text('Make An Appoiment'),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: radius10,
                  color: mgreya,
                ),
                height: 40,
                width: 40,
                child: const Icon(
                  size: 15,
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TableCalendar(
                currentDay: day,
                daysOfWeekVisible: true,
                onDaySelected: (selectedDay, focusedDay) {
                  log(day.toString());
                  setState(() {
                    day = selectedDay;
                    day = focusedDay;
                    log(selectedDay.toString());
                    log(day.toString());
                  });
                  log(day.toString());
                },
                firstDay: DateTime.utc(2022, 12, 20),
                lastDay: DateTime.utc(2023, 2, 14),
                focusedDay: day),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Time Slots',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: ScrollPhysics(),
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1,
                  mainAxisExtent: 65,
                  crossAxisCount: 2,
                  childAspectRatio: 2),
              itemCount: timelist.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimpleShadow(
                    sigma: 2,
                    opacity: 0.3,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currebtintex = index;
                        });
                      },
                      child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: radius15,
                            color: currebtintex == index ? cmain : mWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                timelist[index],
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: currebtintex == index
                                        ? mWhite
                                        : mBlack),
                              ),
                            ),
                          )),
                    ),
                  ),
                );
              },
            ),
          ),
          button(),
          hsizedbox10
        ],
      )),
    );
  }
}

class button extends StatelessWidget {
  const button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ScreenPatiantsInfo();
            },
          ));
        },
        child: Container(
          decoration: const BoxDecoration(borderRadius: radius10, color: cmain),
          width: double.infinity,
          height: 45,
          child: const Center(
              child: Text(
            'Book An Appoiment',
            style: TextStyle(color: mWhite),
          )),
        ));
  }
}
