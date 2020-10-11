
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meloet_app/class_folder/datepicker.dart';
import 'package:meloet_app/header.dart';
import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';
import 'package:toggle_switch/toggle_switch.dart';




String selected_date_string = DateFormat('yyyy/MM/dd(E)').format(DateTime.now());
MaterialColor pl_color = Colors.blue;

class Edit_PL extends StatefulWidget {

  @override
  Edit_PL_state createState() => Edit_PL_state();
}

class Edit_PL_state extends State<Edit_PL>{

  List<bool> isSelected = [false, true];






  @override
  void initState() {
    super.initState();
    pl_color = Colors.pink
    ;
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: Header("収益費用入力"),
        body:Container(
          child:Center(
            child: Column(
              children: <Widget>[


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleButtons(
                  children: <Widget>[
                    Text("収益",style:TextStyle(
                        fontWeight: FontWeight.bold)),
                    Text("費用",style:TextStyle(
                        fontWeight: FontWeight.bold)),
                  ],
                  isSelected: isSelected,
                  fillColor: pl_color,
                  selectedColor:Colors.white,


                  onPressed: (int index) {
                    setState(() {


                      if (index == 0){
                        pl_color = Colors.blue;
                      }else if(index == 1){
                        pl_color = Colors.pink;
                      }

                      for (int indexBtn = 0;indexBtn < isSelected.length;indexBtn++) {
                        if (indexBtn == index) {
                          isSelected[indexBtn] = !isSelected[indexBtn];
                        } else {
                          isSelected[indexBtn] = false;
                        }
                        if (indexBtn == index) {
                          isSelected[indexBtn] = true;
                        } else {
                          isSelected[indexBtn] = false;
                        }
                      }


                    });
                  },
                ),
              ),

                   Container(
                      margin: const EdgeInsets.all(10.0),



                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Stack(
                                children: <Widget>[
                                  Positioned(

                                    child:DatePicker(),
                                  ),
                              Positioned(

                               child: Text("日付"))
                            ]
                            )

                                  ],
                        ),
                   ),

                Container(
                  margin: const EdgeInsets.all(10.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("金額"),


                            TextFormField(
                          enabled: true,
                          style: TextStyle(color: Colors.black,fontSize: 18),
                          obscureText: false,
                          maxLines:1 ,
                          textAlign: TextAlign.center,

                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          inputFormatters:<TextInputFormatter>  [
                            WhitelistingTextInputFormatter.digitsOnly,


                          ],
                          decoration: const InputDecoration(
                          hintText: '金額を入力してください',
                          )
                      ),
                      ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing:10,
                    spacing:10,

                    children: <Widget>[
                      Container(
                        width: 80.0,
                        height:80.0,
                        color: pl_color,

                        child:Center(child: Text("スタジオ代"))
                      ),
                      Container(
                        width: 80.0,
                        height:80.0,
                        color: pl_color,
                          child:Center(child: Text("レコーディング代"))
                      ),
                      Container(
                        width: 80.0,
                        height:80.0,
                        color: pl_color,
                          child:Center(child: Text("出演費"))
                      ),
                      Container(
                        width: 80.0,
                        height:80.0,
                        color: pl_color,
                          child:Center(child: Text("グッズ原価"))
                      ),
                      Container(
                        width: 80.0,
                        height:80.0,
                        color: pl_color,
                          child:Center(child: Text("出演費/ノルマ"))
                      ),
                    ],
                  ),
                )

              ]
            )
          )
        )
    )
    ;
  }
}




