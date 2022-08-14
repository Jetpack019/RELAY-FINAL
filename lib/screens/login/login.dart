import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:relay_finalize/loginpage_email.dart';
import 'package:relay_finalize/screens/intro_screen/intro_images.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../controllers/forgot_password.dart';
import '../../controllers/login_controller.dart';
import '../../login_page.dart';
import '../home/home.dart';
import '../sign_up/sign_up.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidePassword = true;

  //form key
  final _formKey = GlobalKey<FormState>();
  Map? userData;

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Text("Relay App");
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
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
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter your email',
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
      controller: passwordController,
      obscureText: isHidePassword,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter Valid Password");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
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
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromARGB(255, 255, 182, 23),
      child: MaterialButton(
        onPressed: () {
          signIn(emailController.text, passwordController.text);
        },
        height: 50,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Word Sans',
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );

    final facebookLoginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromARGB(255, 66, 103, 178),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: SizedBox(
          child: MaterialButton(
            onPressed: () {
              Provider.of<LoginController>(context, listen: false)
                  .facebookLogin();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            height: 50,
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                Text(
                  "  Continue with Facebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    final googleLoginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromARGB(255, 224, 224, 224),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: SizedBox(
          child: MaterialButton(
            onPressed: () {
              Provider.of<LoginController>(context, listen: false)
                  .googleLogin();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            height: 50,
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.asset(
                  "assets/Login/google-icon.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                Text(
                  "   Continue with Google",
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
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.white,
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Image.asset(
                      "assets/Login/relay-login-logo.png",
                      width: 450,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Text(
                        'Email',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    emailField,
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    passwordField,
                    Align(
                      alignment: AlignmentDirectional(0.85, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: GestureDetector(
                          child: Text(
                            'Forgot your Password?',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              color: Color.fromARGB(255, 107, 201, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPasswordScreen()),
                                (r) => false);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    loginButton,
                    SizedBox(height: 10),
                    Text(
                      'OR',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                    SizedBox(height: 10),
                    facebookLoginButton,
                    SizedBox(height: 10),
                    googleLoginButton,
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an Account? ',
                            style: TextStyle(),
                          ),
                          // ignore: unnecessary_new
                          new GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()),
                                  (r) => false);
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFC839),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      )),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LogInPage_Email()),
          (r) => false);
    }
  }

  void login() async {
    var result =
        await FacebookAuth.i.login(permissions: ["public_profile, email"]);
    if (result.status == LoginStatus.success) {
      final requestData =
          await FacebookAuth.i.getUserData(fields: "email, name, picture");
      userData = requestData;
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LogInPage_Email()),
          (r) => false);
    }
  }

  void _togglepasswordview() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
