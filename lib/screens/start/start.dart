import 'package:flutter/material.dart';

import '../home/home.dart';
import '../login/login.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: StreamBuilder(builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return HomeScreen();
        } else if (snapshot.hasError) {
          return Center(child: Text('Something Went Wrong'));
        } else {
          return LoginScreen();
        }
      }));
}
