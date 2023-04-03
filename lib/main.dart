import 'package:flutter/material.dart';
import 'package:playkosmos_activity/features/post/view/post_activity.dart';
import 'package:playkosmos_activity/utils/theme.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload Activity',
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      home: PostActivity(),
    );
  }
}

