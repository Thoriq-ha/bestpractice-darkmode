import 'package:flutter/material.dart';
import 'package:tutorial_darkmode/home_page.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData themeData = ThemeData.light();

  /* fungsi mengubah tema sesuai inputan parameter */
  void setTheme(bool isDarkmode) {
    setState(() {
      themeData = (isDarkmode) ? ThemeData.dark() : ThemeData.light();
    });
  }

  /* hanya dijalankan sekali ketika halaman / class MyApp pertama kali di jalankan */
  @override
  void initState() {
    /* default / tema awal dibuat tidak gelap (isDarkmode = false) */
    setTheme(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      /* fungsi set theme dijadikan sebuah parameter pada home page
      agar dapat dijalankan pada class tersebut */
      home: HomePage(setTheme: setTheme),
    );
  }
}
