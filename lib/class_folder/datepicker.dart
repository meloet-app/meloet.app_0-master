
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meloet_app/routes/edit-folder/edit_PL.dart';



DateTime selectedDate = DateTime.now();
var now = DateTime.now();
var this_year = now.year;

class DatePicker extends StatefulWidget {

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  /// Which holds the selected date
  /// Defaults to today's date.
  ///
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    selected_date_string = DateFormat('yyyy/MM/dd(E)').format(DateTime.now());
  }



  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(

      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(this_year+2),

        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              // ヘッダーの色
              primaryColor: pl_color,
              // 日付選択部の色
              dialogBackgroundColor: Colors.white,
              // 選択されたときのテキストの色
              accentTextTheme: TextTheme(
                bodyText1: TextStyle(
                  color: Colors.black,
                ),
              ),
              // 選択されたときの円の色
              accentColor: Colors.purple,
              // OK/CANCELボタンのテキストの色
              buttonTheme: const ButtonThemeData(
                textTheme: ButtonTextTheme.accent,
              ),
            ),
            child: child,
          );
        });
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        selected_date_string = DateFormat('yyyy/MM/dd(E)').format(picked);
      });
  }

  @override
  Widget build(BuildContext context) {

    return
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(

              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
               setState(() {
                 selectedDate = selectedDate.add(const Duration(days:-1));
                 selected_date_string = DateFormat('yyyy/MM/dd(E)').format(selectedDate);
               });
              },
            ),
            Text(selected_date_string ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )
            ),
            IconButton(

              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                setState(() {
                  selectedDate = selectedDate.add(const Duration(days:1));//日付を１すすめる
                  selected_date_string = DateFormat('yyyy/MM/dd(E)').format(selectedDate);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: FloatingActionButton(
                backgroundColor: pl_color,
               child: Icon(Icons.calendar_today,),
                onPressed: () {
                _selectDate(context);
              }
        ),
            )
    ]
        );
  }
}