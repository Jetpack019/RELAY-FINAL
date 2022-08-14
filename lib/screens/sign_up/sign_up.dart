import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../controllers/otp_form.dart';
import '../../model/user_model.dart';
import '../login/login.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isHidePassword = true;
  final _auth = FirebaseAuth.instance;

  //form key
  final _formKey = GlobalKey<FormState>();

  final usernameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmpasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Username is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Name");
        }
        return null;
      },
      onSaved: (value) {
        usernameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Username',
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
          color: Color(0xFF868585),
        ),
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a Valid Email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your Email',
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
          Icons.mail_outline_rounded,
          color: Color(0xFF868585),
        ),
      ),
    );

    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: isHidePassword,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required");
          }
          if (!regex.hasMatch(value)) {
            return ("Please Enter Valid Password");
          }
        },
        onSaved: (value) {
          passwordEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: 'Enter your password',
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
            Icons.lock_outlined,
            color: Color(0xFF868585),
          ),
          suffixIcon: GestureDetector(
            onTap: _togglepasswordview,
            child: isHidePassword
                ? const Icon(
                    Icons.visibility_off,
                    color: Color(0xFF757575),
                    size: 22,
                  )
                : Icon(
                    Icons.visibility,
                    color: Color(0xFF757575),
                    size: 22,
                  ),
          ),
        ));

    final confirmpasswordField = TextFormField(
      autofocus: false,
      controller: confirmpasswordEditingController,
      obscureText: true,
      onSaved: (value) {
        confirmpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: 'Confirm your Password',
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
          Icons.lock_outline,
          color: Color(0xFF868585),
        ),
      ),
      validator: (value) {
        if (confirmpasswordEditingController.text !=
            passwordEditingController.text) {
          return "Password not match";
        }
        return null;
      },
    );

    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromARGB(255, 255, 182, 23),
      child: MaterialButton(
        onPressed: () {
          signUp(emailEditingController.text, passwordEditingController.text);
        },
        height: 50,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          "Create an Account",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Word Sans',
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (r) => false);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.white,
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/Login/relay-login-logo.png",
                        width: 1000,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),

                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                        child: Text(
                          'Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      usernameField,

                      // ignore: unnecessary_const
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                        child: Text(
                          'E-mail',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      emailField,

                      // ignore: unnecessary_const
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                        child: Text(
                          'Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      passwordField,

                      // ignore: unnecessary_const
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                        child: Text(
                          'Confirm Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      confirmpasswordField,
                      SizedBox(height: 30),
                      signupButton,
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'By refering you confirm that your accept our',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 8,
                              ),
                            ),
                            Text(
                              ' Terms and Condition',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFC839),
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(),
                            ),
                            // ignore: unnecessary_new
                            new GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (r) => false);
                              },
                              child: const Text(
                                ' Log in',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFC839),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => OTPForm()));
    }
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sending this values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();
    userModel.uid = user!.uid;
    userModel.email = user.email;
    userModel.username = usernameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }

  void _togglepasswordview() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
