


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:meloet_app/header.dart";

import 'data-folder/data_page1.dart';
import 'data-folder/data_page2.dart';
import 'edit-folder/edit_PL.dart';



Widget data_home (BuildContext context,String btn_txt,String descript_txt,String img_url,bool left_to_right,function){
  return
    Card(
      elevation: 4.0,
      margin: EdgeInsets.all(20),

      child:Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        //if文
        textDirection: left_to_right == true ? TextDirection.rtl : TextDirection.ltr,
        children: <Widget>[
          Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      elevation: 4.0,
                      child: Text(btn_txt),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(builder: (context) =>function)
                      );},
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(descript_txt,
                        overflow: TextOverflow.clip,),

                    )
                  ] ,
                ),
              )),
          Expanded(
            flex: 1,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(img_url),
            ),

          )],
      ),

      /*Image.asset('images/PL_img.jpeg'),*/
    );
}




class Data extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header("データ"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            data_home(context,"収益・費用", "ここでは今月または過去の収益や費用の詳細を見ることができます。", 'images/PL_img.jpeg',false,Data_Page1()),
            data_home(context,"個人間貸し借り","ここでは今月または過去の収個人間貸し借りの詳細を見ることができます","images/PL_img.jpeg",true,Data_Page2())
        ]),
    );

  }
}
