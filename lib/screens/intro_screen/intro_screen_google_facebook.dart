import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:relay_finalize/controllers/userinfo_change.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home/home.dart';

class IntroGoogle_Facebook extends StatefulWidget {
  IntroGoogle_Facebook({Key? key}) : super(key: key);

  @override
  State<IntroGoogle_Facebook> createState() => _IntroGoogle_FacebookState();
}

class _IntroGoogle_FacebookState extends State<IntroGoogle_Facebook> {
  final controller = PageController();
  bool isLastPage = false;
  String textPage = "Get Started";

  String? Username_google_facebook;

  String username = "";

  String username_google_facebook = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getUsername_google_facebook();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            Container(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome,",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      username = Username_google_facebook.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Image.asset(
                      "assets/relay_intro/first_page.png",
                      fit: BoxFit.cover,
                      height: 300,
                      width: 350,
                    ),
                  ]),
            ),
            Container(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/relay_intro/second_page.png",
                      fit: BoxFit.contain,
                      height: 400,
                      width: double.infinity,
                    ),
                  ]),
            ),
            Container(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/relay_intro/third_page.png",
                      fit: BoxFit.contain,
                      height: 250,
                      width: double.infinity,
                    ),
                  ]),
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                          child: SizedBox(
                            child: MaterialButton(
                              onPressed: () async {
                                final prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('showHome', true);
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              height: 60,
                              minWidth: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Car Rental",
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
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          spacing: 80,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.amber,
                        ),
                        onDotClicked: (index) => controller.animateToPage(
                              index,
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            )),
                  ),
                ],
              ),
            )
          : Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                          child: SizedBox(
                            child: MaterialButton(
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                                controller == 0
                                    ? textPage = "Get Started"
                                    : controller == 1
                                        ? textPage = "Food Delivery"
                                        : textPage = "Food Delivery";
                              },
                              height: 60,
                              minWidth: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    textPage,
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
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          spacing: 80,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.amber,
                        ),
                        onDotClicked: (index) => controller.animateToPage(
                              index,
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            )),
                  ),
                ],
              ),
            ),
    );
  }

  void getUsername_google_facebook() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Username_google_facebook = pref.getString('Google_Facebook_login');
    setState(() {});
  }
}
