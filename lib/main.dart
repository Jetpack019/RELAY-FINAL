import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter/services.dart';
import 'package:relay_finalize/screens/start/start_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controllers/login_controller.dart';
import 'login_page.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const bool kIsWeb = identical(0, 0.0);

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCR79qTsKrX9mTZ0zkeS_IzZPpHa_vBkrw",
            appId: "1:302225887124:web:7f04585d8759676dc98981",
            messagingSenderId: "302225887124",
            projectId: "relayfinal-8786a"));
  }
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp();

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginController(),
          child: LoginPage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: showHome ? HomeScreen() : StartLogin(),
      ),
    );
  }
}

//relay_finalize -- app name