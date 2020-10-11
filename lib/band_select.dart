import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meloet_app/root.dart';


Widget Band_select_card (String bandname) {
  return
      Card(
      elevation: 4.0,

       child: Container(
          margin: const EdgeInsets.all(20.0),
          width: 80,
          height: 80,

          child: Center(
            child: Text(
              bandname,
            ),
          )
      ),
    );
}

class Band_Select extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(

                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (context) => RootWidget())

                        );
                      },
                     child: Band_select_card("バンチキオブプン"))
                      ]),
            );
  }
}