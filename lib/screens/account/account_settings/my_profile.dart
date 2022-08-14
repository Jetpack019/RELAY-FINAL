import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as Img;
import 'package:path_provider/path_provider.dart';
import 'package:relay_finalize/controllers/userinfo_change.dart';
import 'package:relay_finalize/screens/account/account.dart';
import 'package:relay_finalize/screens/account/account_settings/image_share.dart';
import 'package:relay_finalize/screens/account/account_settings/image_utility.dart';
import 'package:relay_finalize/screens/home/home.dart';
import 'package:relay_finalize/src/custom_dialog_image_pick.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../src/custom_dialog.dart';
import 'image_pick_user.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  File? imageFile;

  Image? image;

  String? _status;
  bool? _imageLoading;
  ImagePicker? _imagePicker;
  String IMG_KEY = 'IMAGE_KEY';

  String? Firstname;
  String? LastName;
  String? Address;
  String? PhoneNumber;

  String Firstname_user = "";
  String LastName_user = "";
  String Address_user = "";
  String PhoneNumber_user = "";

  String? Full_name_user = "";

  @override
  void initState() {
    super.initState();
    _status = '';
    _imageLoading = false;
    _imagePicker = ImagePicker();
    getFirstname();
    getLastName();
    getAddress();
    getPhoneNumber();
    loadImageFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          toolbarHeight: 90,
          flexibleSpace: Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'User Profile',
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          null == image
              ? Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomDialogImagePick(
                                onCameraBTNPressed: () {
                              _getFromCamera();
                            }, onGalleryBTNPressed: () {
                              _getFromGallery();
                            });
                          });
                    },
                    child: Container(
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
                  ),
                )
              : Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            //else if not null
                            return CustomDialogImagePick(
                                onCameraBTNPressed: () {
                              _getFromCamera();
                            }, onGalleryBTNPressed: () {
                              _getFromGallery();
                            });
                          });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: image,
                    ),
                  ),
                ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Firstname == null
                    ? Text(
                        "First Name: First Name Required ",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        "FirstName: $Firstname",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                LastName == null
                    ? Text(
                        "LastName: LastName Required ",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        "LastName: $LastName",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                Address == null
                    ? Text(
                        "Address: Address Required ",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        "Address: $Address",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                PhoneNumber == null
                    ? Text(
                        "Phone Number: Phone Number Required",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        "Phone Number: $PhoneNumber",
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SizedBox(
                        child: MaterialButton(
                          onPressed: () {
                            Full_name_user = Firstname.toString() +
                                " " +
                                LastName.toString();
                            setFullname(Full_name_user);

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          height: 60,
                          minWidth: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Go to Home",
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SizedBox(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ChangeUserData(),
                              ),
                            );
                          },
                          height: 60,
                          minWidth: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Edit you Details",
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
                ),
              ],
            ),
          )
        ])));
  }

  /// Get from gallery
  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        Utility.saveImageToPreferences(
            Utility.base64String(imageFile!.readAsBytesSync()));
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        Utility.saveImageToPreferences(
            Utility.base64String(imageFile!.readAsBytesSync()));
      });
    }
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

  void getAddress() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Address = pref.getString('Address_user');
    setState(() {});
  }

  void getPhoneNumber() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    PhoneNumber = pref.getString('PhoneNumber_user');
    setState(() {});
  }

  Future<void> setFullname(Value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('FullName_user', Full_name_user!);
  }
}
