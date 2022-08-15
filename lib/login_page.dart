import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relay_finalize/screens/intro_screen/intro_screen_google_facebook.dart';
import 'package:relay_finalize/screens/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var image;

  String? Google_Facebook_login_username;

  String? Google_Facebook_login_username_email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body of our ui
      body: loginUI(),
    );
  }

  loginUI() {
    //loggedINUI
    //login Controllers

    return Consumer<LoginController>(builder: (context, model, child) {
      //if we are already logged in
      if (model.userDetails != null) {
        return Center(
          child: loggedInUI(model),
        );
      } else {
        return LoginScreen();
      }
    });
  }

  loggedInUI(LoginController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.userDetails!.photoURL ?? "").image,
          radius: 50,
        ),
        Text(model.userDetails!.displayName ?? ""),
        Text(model.userDetails!.email ?? ""),

        //logout
        ActionChip(
            backgroundColor: Colors.amber,
            avatar: Icon(Icons.logout),
            label: Text("Logout"),
            onPressed: () {
              Provider.of<LoginController>(context, listen: false).Logout();
            }),
        ActionChip(
            backgroundColor: Colors.amber,
            avatar: Icon(Icons.forward),
            label: Text("Lets Proceed"),
            onPressed: () {
              Google_Facebook_login_username = model.userDetails!.displayName;
              setGoogle_Facebook(Google_Facebook_login_username);

              Google_Facebook_login_username_email = model.userDetails!.email;
              setGoogle_Facebook_email(Google_Facebook_login_username_email);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => IntroGoogle_Facebook(),
                ),
              );
            }),
      ],
    );
  }

  loginController(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Provider.of<LoginController>(context, listen: false)
                    .googleLogin();
              },
              child: Text(
                "Sign Up with Google",
                style: TextStyle(fontSize: 20),
              )),
          GestureDetector(
            onTap: () {
              Provider.of<LoginController>(context, listen: false)
                  .facebookLogin();
            },
            child: Text(
              "Sign Up with Facebook",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> setGoogle_Facebook(Google_Facebook) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('Google_Facebook_login', Google_Facebook_login_username!);
  }

  Future<void> setGoogle_Facebook_email(Google_Facebook_email) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(
        'Google_Facebook_login_email', Google_Facebook_login_username_email!);
  }
}
