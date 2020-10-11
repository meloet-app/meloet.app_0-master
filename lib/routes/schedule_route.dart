import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:meloet_app/header.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nholiday_jp/nholiday_jp.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;



class _CalenderExampleState extends State<Schedule> {
DateTime _currentDate = DateTime.now();

void onDayPressed(DateTime date, List<Event> events) {



  this.setState(() => _currentDate = date);
  Fluttertoast.showToast(msg: date.toString());
}

@override
Widget build(BuildContext context) {
  return new Scaffold(
      appBar: Header("スケジュール"),
      body: Container(
        child: CalendarCarousel<Event>(
          headerTextStyle: TextStyle(color: Colors.blue,
          fontSize: 20),
            onDayPressed: onDayPressed,
            weekendTextStyle: TextStyle(color: Colors.red),
            thisMonthDayBorderColor: Colors.blue,
            weekFormat: false,
            height: 452.0,
            selectedDateTime: _currentDate,
            daysHaveCircularBorder: false,
            customGridViewPhysics: NeverScrollableScrollPhysics(),
            markedDateShowIcon: true,
            markedDateIconMaxShown: 2,
            todayTextStyle: TextStyle(
              color: Colors.white,
            ),
            markedDateIconBuilder: (event) {
              return event.icon;
            },
            todayBorderColor: Colors.green,
            selectedDayButtonColor: Colors.blue,
            todayButtonColor: Colors.lightBlueAccent,
            markedDateMoreShowTotal: false),
      ));
}
}


class Schedule extends StatefulWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(



    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CalenderExampleState();
  }
}