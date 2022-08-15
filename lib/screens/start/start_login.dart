import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/login/login.dart';
import 'package:relay_finalize/screens/sign_up/sign_up.dart';

class StartLogin extends StatelessWidget {
  const StartLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/StartLogin/startLoginScreen.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Image.asset("assets/StartLogin/Food delivery.png",
                      height: 300, width: MediaQuery.of(context).size.width),
                  Image.asset("assets/StartLogin/Where is my car.png",
                      height: 300, width: MediaQuery.of(context).size.width),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 25),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: SizedBox(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Log In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Word Sans',
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 25),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: SizedBox(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Word Sans',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
