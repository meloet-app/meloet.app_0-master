import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';



  Widget header2(String titlepage) {
    return


              Image.asset("images/header.png");
  }


class Header extends StatelessWidget with PreferredSizeWidget{
   String pagename;

  Header(String this.pagename);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return GradientAppBar(

      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            heroTag: "arrow_back1",
          child:Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Icon(Icons.settings),
        ),
      ],
      title: Text(
        'band_nameの'+this.pagename,
      ),
      backgroundColorStart: Color(0xff1e50a2).withOpacity(0.6),
      backgroundColorEnd: Color(0xff7fbfff).withOpacity(0.8),
      elevation: 4.0,
    );
  }
}



