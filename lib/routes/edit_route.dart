import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meloet_app/header.dart';


import 'edit-folder/edit_PL.dart';

class Edit extends StatelessWidget {
  get children => null;
 // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: Header("入力"),

      body:
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context) =>Edit_PL())
                    );
                          },

                    child:Card(
                        elevation: 4.0,
                        child:Container(
                            margin: const EdgeInsets.all(10.0),
                            width: 260,
                            height: 100,
                            child: Center(child: Text("費用/収益を書き込む")))
                    )),
                    Card(
                        elevation: 4.0,
                      child:Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 260,
                          height: 100,
                        child:Center(child: Text("貸し借りを書き込む"))
                      )
                    ),
                ],
              ),
            )
    );
  }
}