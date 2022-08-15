import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/intro_screen/intro_images.dart';

class LogInPage_Email extends StatefulWidget {
  LogInPage_Email({Key? key}) : super(key: key);

  @override
  State<LogInPage_Email> createState() => _LogInPage_EmailState();
}

class _LogInPage_EmailState extends State<LogInPage_Email> {
  final Stream<DocumentSnapshot> _usersStream = FirebaseFirestore.instance
      .collection("users")
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .snapshots();

  String Email_Login_username = "";
  String Username_Login_username = "";
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: _usersStream,
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Text("Loading");
          } else if (snapshot.hasError) {
            return Text('Something went wrong');
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          dynamic data = snapshot.data;
          return new Scaffold(
              body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1660381010~exp=1660381610~hmac=c8d393db78441f4414905a9f907d62c681ad55c19d10b3202a1ccfb17b786954',
                  ),
                ),
                SizedBox(height: 10),
                Text(data['username']),
                SizedBox(height: 10),
                Text(data['email']),
                SizedBox(height: 10),

                SizedBox(height: 30),

                //logout
                ActionChip(
                    backgroundColor: Colors.amber,
                    avatar: Icon(Icons.logout),
                    label: Text("Change User"),
                    onPressed: () {
                      stream:
                      FirebaseAuth.instance.signOut();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (r) => false);
                    }),

                SizedBox(height: 20),
                ActionChip(
                    backgroundColor: Colors.amber,
                    avatar: Icon(Icons.forward),
                    label: Text("Lets Proceed"),
                    onPressed: () {
                      Username_Login_username = data['username'];
                      setUsername_Login(Username_Login_username);

                      Email_Login_username = data['email'];
                      setEmail_Login(Email_Login_username);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => IntroImages(),
                        ),
                      );
                    }),
              ],
            ),
          ));
        });
  }

  Future<void> setEmail_Login(Email_Login) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('Email_Login', Email_Login_username);
  }

  Future<void> setUsername_Login(Username_Login) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('Username_Login', Username_Login_username);
  }
}
