import 'package:flutter/material.dart';

import 'band_select.dart';
import 'root.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
      const Locale("en"),
      const Locale("ja"),
      ],
      home: Band_Select(),
      debugShowCheckedModeBanner: false,
    );
  }
}

