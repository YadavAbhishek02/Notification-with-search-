import 'package:flutter/material.dart';
import 'Eventscontroller/Eventlist_Controllerview.dart';
import 'ForumPrelimsTests/Start_test_page.dart';
import 'ForumPrelimsTests/Test_page.dart';
import 'Notification/Home_page.dart';
void main() {
  runApp(const MyApp());
  // windowManager.waitUntilReadyToShow().then((_) async{
  //   await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
  // });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const NotificationHomePage(),
    );
  }
}