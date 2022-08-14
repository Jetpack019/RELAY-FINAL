import 'package:flutter/material.dart';

import 'account_settings/my_profile.dart';

class AccountSettings extends StatefulWidget {
  AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        toolbarHeight: 180,
        flexibleSpace: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Text(
                  'Account Settings',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          height: 70,
          color: Color.fromARGB(255, 202, 202, 202),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 50,
            ),
            child: Text(
              "My Account",
              style: TextStyle(
                color: Color.fromARGB(255, 131, 131, 131),
              ),
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyProfile(),
              ),
            );
          },
          title: Text(
            'My Profile',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'My Addresses',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Bank Accounts / Cards',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Container(
          height: 70,
          color: Color.fromARGB(255, 202, 202, 202),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 50,
            ),
            child: Text(
              "Settings",
              style: TextStyle(
                color: Color.fromARGB(255, 131, 131, 131),
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Chat Settings',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Notification Settings',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Privacy Settings',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Language/English',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Container(
          height: 70,
          color: Color.fromARGB(255, 202, 202, 202),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 50,
            ),
            child: Text(
              "Support",
              style: TextStyle(
                color: Color.fromARGB(255, 131, 131, 131),
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Help Centre',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Application Rules',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Relay Policies',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Happy with Relay? Rate us!',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'About',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        ListTile(
          title: Text(
            'Request Account Deletion',
            style: TextStyle(),
          ),
          tileColor: Color(0xFFF5F5F5),
          dense: false,
        ),
        Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
        ),
        Container(
          color: Color.fromARGB(255, 131, 131, 131),
          height: 100,
          child: Material(
            color: Color.fromARGB(255, 184, 184, 184),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                  child: SizedBox(
                    child: MaterialButton(
                      color: Color.fromARGB(255, 184, 184, 184),
                      onPressed: () async {},
                      height: 60,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Logout",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Relay ver 1.0")
              ],
            ),
          ),
        )
      ]),
    );
  }
}
