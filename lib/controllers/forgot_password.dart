import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../screens/login/login.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = new TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final resetemailButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: SizedBox(
          child: MaterialButton(
            onPressed: () {
              verifyemail();
            },
            height: 50,
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.lock_clock),
                Text(
                  "  Reset Password",
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

    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter  an email to\n reset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.white,
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
                  validator: (email) {
                    email != null && !EmailValidator.validate(email)
                        ? ' Enter a valid email'
                        : null;
                    return null;
                  },
                ),
                SizedBox(height: 20),
                resetemailButton
              ],
            )),
      ),
    );
  }

  Future verifyemail() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircleAvatar(),
            ));

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());

      Fluttertoast.showToast(msg: 'Password Reset Email Sent');
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print(e);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      Navigator.of(context).pop();
    }
  }
}
