import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:relay_finalize/screens/home/home.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  EmailAuth emailAuth = new EmailAuth(sessionName: "Sample session");
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();
  final TextEditingController _otpController5 = TextEditingController();
  final TextEditingController _otpController6 = TextEditingController();

  void sendOTP() async {
    emailAuth.sessionName = "Text Session";
    bool res = await emailAuth.sendOtp(
        recipientMail: _emailcontroller.value.text, otpLength: 5);
    if (res) {
      Fluttertoast.showToast(msg: "OTP Sent");
    } else {
      Fluttertoast.showToast(msg: "We could not sent the OTP");
    }
  }

  void verifyOTP() {
    var res = emailAuth.validateOtp(
        recipientMail: _emailcontroller.value.text,
        userOtp: _otpController1.text +
            _otpController2.text +
            _otpController3.text +
            _otpController4.text +
            _otpController5.text +
            _otpController6.text);
    if (res) {
      Fluttertoast.showToast(msg: "OTP Verified");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      AlertDialog(
          title: const Text('Oops Theres a problem'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Theres a problem generating your OTP'),
                Text('Check your internet connection'),
              ],
            ),
          ));
      Fluttertoast.showToast(msg: "Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Enter Your Registered Email To Sent you the Code for\n Verification at your Email',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _emailcontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter your registered email",
                  labelText: "Email",
                  suffixIcon: TextButton(
                    child:
                        Text("Send OTP", style: TextStyle(color: Colors.black)),
                    onPressed: () {
                      sendOTP();
                    },
                  )),
            ),
            SizedBox(height: 40),
            Text(
              'Please enter the code',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      controller: _otpController1,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {},
                      decoration: InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: _otpController2,
                      onSaved: (pin2) {},
                      decoration: const InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: _otpController3,
                      onSaved: (pin3) {},
                      decoration: const InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: _otpController4,
                      onSaved: (pin4) {},
                      decoration: const InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: _otpController5,
                      onSaved: (pin5) {},
                      decoration: const InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    width: 45,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.headline6,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: _otpController6,
                      onSaved: (pin6) {},
                      decoration: const InputDecoration(
                        fillColor: Colors.amberAccent,
                        filled: true,
                        hintText: "0",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resend the code',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: SizedBox(
                    child: MaterialButton(
                      onPressed: () {
                        verifyOTP();
                      },
                      height: 60,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Verify OTP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
