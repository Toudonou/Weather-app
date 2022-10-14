import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_motion/home_screen.dart';
import 'package:weather_motion/constants.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: bgColor,
    systemNavigationBarDividerColor: bgColor,
    statusBarColor: bgColor,
    // systemStatusBarContrastEnforced: true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TO USE HTTP ON THE BUILD APK YOU SOULD ADD THIS LINE IN AndroidManifest.xml
    // <uses-permission android:name="android.permission.INTERNET" />
    // <application
    //        android:usesCleartextTraffic="true">
    List<String> listFavorite = [
    ];
    return MaterialApp(
      title: 'Weather Motion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: bgColor,
      ),
      home: HomeScreen(
        listFavoriteName: listFavorite,
      ),
    );
  }
}
