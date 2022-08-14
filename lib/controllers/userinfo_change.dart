import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:relay_finalize/screens/account/account_settings/my_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/home/home.dart';

class ChangeUserData extends StatefulWidget {
  const ChangeUserData({Key? key}) : super(key: key);

  @override
  State<ChangeUserData> createState() => _ChangeUserDataState();
}

class _ChangeUserDataState extends State<ChangeUserData> {
  final _formKey = GlobalKey<FormState>();
  final First_Name = new TextEditingController();
  final Last_Name = new TextEditingController();
  final StreetName = new TextEditingController();
  final CityName = new TextEditingController();
  final StateName = new TextEditingController();
  final ZipCode = new TextEditingController();
  final PhoneNumber = new TextEditingController();

  String? First_name_user = "";
  String? LastName_user = "";
  String? Fullname_user = "";
  String? Address_user = "";
  String? PhoneNumber_user = "";

  String? Street_user = "";
  String? State_user = "";
  String? City_user = "";
  String? ZipCode_user = "";

  String? Firstname;

  String? LastName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFirstname();
    getLastName();
  }

  @override
  Widget build(BuildContext context) {
    final Firstname_change_Field = TextFormField(
      autofocus: false,
      controller: First_Name,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your Username");
        }
        return;
      },
      onSaved: (value) {
        First_Name.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Firstname',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.person,
          color: Colors.amber,
        ),
      ),
    );

    final Lastname_change_Field = TextFormField(
      autofocus: false,
      controller: Last_Name,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your Lastname");
        }
        return;
      },
      onSaved: (value) {
        Last_Name.text = value!;
        LastName = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Lastname',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.person,
          color: Colors.amber,
        ),
      ),
    );

    final Street_change_Field = TextFormField(
      autofocus: false,
      controller: StreetName,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your Street");
        }
        return;
      },
      onSaved: (value) {
        StreetName.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your House No. Street ...',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.streetview_rounded,
          color: Colors.amber,
        ),
      ),
    );

    final City_change_Field = TextFormField(
      autofocus: false,
      controller: CityName,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your City");
        }
        return;
      },
      onSaved: (value) {
        CityName.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your City',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.location_city,
          color: Colors.amber,
        ),
      ),
    );

    final State_change_Field = TextFormField(
      autofocus: false,
      controller: StateName,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your State");
        }
        return;
      },
      onSaved: (value) {
        StateName.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your State',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.location_city_sharp,
          color: Colors.amber,
        ),
      ),
    );

    final ZipCode_Field = TextFormField(
      autofocus: false,
      controller: ZipCode,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your Zip Code");
        }
        return;
      },
      onSaved: (value) {
        ZipCode.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Zip Code',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.amber,
        ),
      ),
    );

    final PhoneNumber_Field = TextFormField(
      autofocus: false,
      controller: PhoneNumber,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          Fluttertoast.showToast(msg: "Enter your Phone Number");
        }
        return;
      },
      onSaved: (value) {
        PhoneNumber.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Phone Number',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF868585),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.phone,
          color: Colors.amber,
        ),
      ),
    );

    final proceed_to_home = new Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: SizedBox(
            child: MaterialButton(
              onPressed: () {
                if (First_Name.text.isEmpty ||
                    Last_Name.text.isEmpty ||
                    StreetName.text.isEmpty ||
                    CityName.text.isEmpty ||
                    StateName.text.isEmpty ||
                    ZipCode.text.isEmpty ||
                    PhoneNumber.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Fill all the Fields");
                } else {
                  First_name_user = First_Name.text;
                  setFirstname(First_name_user);

                  LastName_user = Last_Name.text;
                  setLastName(LastName_user);

                  Street_user = StreetName.text;
                  setStreet(Street_user);

                  City_user = CityName.text;
                  setCity(City_user);

                  State_user = StateName.text;
                  setStateName(State_user);

                  ZipCode_user = ZipCode.text;
                  setZipCode(ZipCode_user);

                  Address_user = StreetName.text +
                      "  " +
                      CityName.text +
                      "  " +
                      StateName.text +
                      "  " +
                      ZipCode.text;
                  setAddress(Address_user);

                  PhoneNumber_user = PhoneNumber.text;
                  setPhoneNumber(PhoneNumber_user);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }
              },
              height: 80,
              minWidth: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Proceed to User Profile",
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
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        flexibleSpace: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                },
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Enter Your Details',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Word Sans',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "First Name: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Firstname_change_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Last Name: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Lastname_change_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "House No. Street and Barangay: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Street_change_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "City: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  City_change_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "State: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  State_change_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Zip Code: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ZipCode_Field,
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Phone Number: ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  PhoneNumber_Field,
                  SizedBox(height: 20),
                  proceed_to_home,
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> setFirstname(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('FirstName_user', First_name_user!);
  }

  Future<void> setLastName(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('LastName_user', LastName_user!);
  }

  Future<void> setStreet(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('Street_user', Street_user!);
  }

  Future<void> setStateName(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('State_user', State_user!);
  }

  Future<void> setCity(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('City_user', City_user!);
  }

  Future<void> setZipCode(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('ZipCode_user', ZipCode_user!);
  }

  Future<void> setAddress(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('Address_user', Address_user!);
  }

  Future<void> setPhoneNumber(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('PhoneNumber_user', PhoneNumber_user!);
  }

  void getFirstname() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Firstname = pref.getString('FirstName_user');
    setState(() {});
  }

  void getLastName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    LastName = pref.getString('LastName_user');
    setState(() {});
  }
}
