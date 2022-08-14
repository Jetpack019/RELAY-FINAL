import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:relay_finalize/controllers/userinfo_change.dart';
import 'package:relay_finalize/screens/account/account_settings/image_pick_user.dart';
import 'package:relay_finalize/screens/account/account_settings/my_profile.dart';
import 'package:relay_finalize/screens/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'account_settings.dart';
import 'account_settings/image_share.dart';
import 'account_settings/image_utility.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int currentIndex = 3;

  String? Username_google_facebook;
  String? Username_google_facebook_email;
  String? Username_Email;
  String? Username_Username;

  String account_username = "";
  String account_username_google_fb = "";
  String account_email = "";
  String account_email_google_fb = "";

  String? FullName_user;

  String? PhoneNumber;

  String? Address;

  Image? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsername_Email();
    getUsername_Username();

    //google facebook
    getUsername_google_facebook();
    getUsername_google_facebook_email();
    getFullname();
    getPhoneNumber();
    getAddress();
    loadImageFromPrefs();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 230,
          flexibleSpace: Container(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 50, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        image == null
                            ? Container(
                                width: 100,
                                height: 100,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1660381010~exp=1660381610~hmac=c8d393db78441f4414905a9f907d62c681ad55c19d10b3202a1ccfb17b786954',
                                ),
                              )
                            : Container(
                                width: 100,
                                height: 100,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: image,
                              ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FullName_user == null
                                    ? Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          "User Relay",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          FullName_user.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                PhoneNumber == null
                                    ? Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          "User Phone Number",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          PhoneNumber.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                Address == null
                                    ? Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          "User Address",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: Text(
                                          Address.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                              ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 250, 209),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(width: 50),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.car_rental,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(width: 50),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/Account/my_purchases.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'My Purchases',
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          'View Purchase History',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/Account/my_rentals.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'My Rentals',
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          'View Rental History',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/Account/my_wallet.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'My Wallet',
                      style: TextStyle(),
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AccountSettings(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      "assets/Account/account_Settings.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Account Settings',
                      style: TextStyle(),
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/Account/help.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Help Centre',
                      style: TextStyle(),
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/Account/chat_with_relay.png",
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Chat with Relay',
                      style: TextStyle(),
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    onTap: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool('showHome', false);

                      final prefs_email = await SharedPreferences.getInstance();
                      prefs.remove('Email_Login');

                      final prefs_username =
                          await SharedPreferences.getInstance();
                      prefs.remove('Username_Login');

                      final prefs_username_Google_facebook =
                          await SharedPreferences.getInstance();
                      prefs.remove('Google_Facebook_login');

                      final prefs_email_Google_facebook =
                          await SharedPreferences.getInstance();
                      prefs.remove('Google_Facebook_login_email');

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    title: Text(
                      'LogOut',
                      style: TextStyle(),
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  loadImageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final imageKeyValue = prefs.getString("IMAGE_KEY");
    if (imageKeyValue != null) {
      final imageString = await Utility.getImageFromPreferences();
      setState(() {
        image = Utility.imageFromBase64String(imageString!);
      });
    }
  }

  void getUsername_google_facebook() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Username_google_facebook = pref.getString('Google_Facebook_login');
    setState(() {});
  }

  void getUsername_google_facebook_email() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Username_google_facebook_email =
        pref.getString('Google_Facebook_login_email');
    setState(() {});
  }

  void getUsername_Email() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Username_Email = pref.getString('Email_Login');
    setState(() {});
  }

  void getUsername_Username() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Username_Username = pref.getString('Username_Login');
    setState(() {});
  }

  void getFullname() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    FullName_user = pref.getString('FullName_user');
    setState(() {});
  }

  void getPhoneNumber() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    PhoneNumber = pref.getString('PhoneNumber_user');
    setState(() {});
  }

  void getAddress() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Address = pref.getString('Address_user');
    setState(() {});
  }
}
