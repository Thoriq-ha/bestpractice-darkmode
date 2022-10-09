import 'package:flutter/material.dart';
import 'package:tutorial_darkmode/shared_pref.dart';

class HomePage extends StatefulWidget {
  Function setTheme;
  HomePage({Key? key, required this.setTheme}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isDarkmode = false;
  bool isDarkmode = SharedPref.pref?.getBool('isDarkmode') ?? false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          /* logic untuk membalik sebuah nilai darkmode
          jika nilai awal true maka akan menjadi false
          dan jika nilai awal false maka akan menjadi true */
          isDarkmode = !isDarkmode;
          widget.setTheme(isDarkmode);
        },
        child: const Text('Switch Theme'),
      )),
    );
  }
}
