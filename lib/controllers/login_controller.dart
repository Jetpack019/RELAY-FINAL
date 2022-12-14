import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:relay_finalize/model/user_details.dart';

class LoginController with ChangeNotifier {
  // object
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetails? userDetails;

  late BuildContext context;

  // function
  googleLogin() async {
    this.googleSignInAccount = await _googleSignIn.signIn();

    //inserting values to our user details model
    this.userDetails = new UserDetails(
      displayName: this.googleSignInAccount!.displayName,
      email: this.googleSignInAccount!.email,
      photoURL: this.googleSignInAccount!.photoUrl,
    );

    // call
    notifyListeners();
  }

  facebookLogin() async {
    var result = await FacebookAuth.i.login(
      permissions: ["public_profile", "email"],
    );

    //check the status of our login
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(
        fields: "email, name, picture",
      );

      this.userDetails = new UserDetails(
          displayName: requestData["name"],
          email: requestData["email"],
          photoURL: requestData["picture"]["data"]["url"] ?? "");
      notifyListeners();
    }
  }

  //logout
  Logout() async {
    this.googleSignInAccount = await _googleSignIn.signOut();
    await FacebookAuth.i.logOut();
    userDetails = null;
    notifyListeners();
  }
}
