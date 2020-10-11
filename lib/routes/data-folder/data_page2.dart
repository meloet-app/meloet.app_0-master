import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meloet_app/class_folder/datepicker.dart';
import 'package:meloet_app/header.dart';


class Data_Page2 extends StatefulWidget{

  @override
  Data_Page2_state createState() => Data_Page2_state();
}

class Data_Page2_state extends State<Data_Page2>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Header("データ2閲覧ページ"),
      body:Text("DATAPAGE2"),
    );


}
}