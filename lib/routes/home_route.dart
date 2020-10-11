import 'package:flutter/material.dart';
import 'package:meloet_app/header.dart';


Widget notice_card (String info_category, String info_content1, String info_content2) {
  return
  Card(
    elevation: 4.0,

      child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 260,
          height: 100,

          child: Center(
            child: Text(
                info_category+"\n"+info_content1+"\n"+info_content2,
            ),
          )
      ),
    );
}



class Home extends StatelessWidget { // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header("ホーム"),
      body:
          Align(
            alignment: Alignment.center,

            child: Container(

              child:Column(

                children: <Widget>[
                  notice_card("次の練習の予定は","日付","@場所"),
                  notice_card("次の本番の予定は","日付","@場所"),
                  notice_card("現在の借金は","〇〇"+"さんに"+"xx"+"円","△△"+"さんに"+"yy"+"円"),
                  notice_card("今月の収益合計は"+"xx"+"円","今月の費用合計は"+"xx"+"円",""),
                      ]
              ),
              ),
          ),
    );
  }
}

