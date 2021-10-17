import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
FirebaseAuth auth = FirebaseAuth.instance;
//final gooleSignIn = GoogleSignIn();



Future<void> googleSignIn() async {
  final gooleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount = await gooleSignIn.signIn();
  final prefs = await SharedPreferences.getInstance();

  final GoogleSignInAuthentication googleAuth = await googleSignInAccount!.authentication;
  if (googleSignInAccount != null) {
    // GoogleSignInAuthentication googleSignInAuthentication =
    // await googleSignInAccount.authentication;

    OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
  //  final  c= GoogleAuthProvider.credential(  accessToken: googleAuth.accessToken,
  // idToken: googleAuth.idToken,)
    final UserCredential googleUserCredential =
    await FirebaseAuth.instance.signInWithCredential(credential);
//     User user = googleUserCredential.user;
// Map profile = {"name": user.displayName, "email": user.email, "id": user.uid, "type": "facebook"};
await prefs.setString('Name', googleUserCredential.user!.displayName.toString());
    print("##################################");
    print(googleUserCredential.user!.displayName.toString());
//    AuthResult result = await auth.signInWithCredential(credential);
//    print(user.uid);
//
//    return user;
  }
}


// Future<void> facebookSignIn() async {
//   final facebookLogin = FacebookLogin();
//   final result = await facebookLogin.logInWithReadPermissions(["email"]);
//   final accessToken = result.accessToken.token;
//   final graphResponse = await http.get(
// //      https://developers.facebook.com/docs/graph-api/reference/user/
//       'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture&access_token=${accessToken}');
//    Map profile = jsonDecode(graphResponse.body);
// print("###########################");
// //print(profile["name"]);
// //      o/p={name: Aditi Deshmukh, first_name: Aditi, last_name: Deshmukh, email: abdeshmukh2003@gmail.com, id: 103925085188577}
//   print(profile);
//   if (result.status == FacebookLoginStatus.loggedIn) {
//     final credential = FacebookAuthProvider.credential(accessToken);
//     auth.signInWithCredential(credential);
//   }
// }

//
//void otpLogin(String phone, BuildContext context){
//  FirebaseAuth auth = FirebaseAuth.instance;
//  auth.verifyPhoneNumber(
//      phoneNumber: phone,
//      verificationCompleted:(phoneAuthCredential) async{},
//      verificationFailed: (verificationFailed) async{},
//      codeSent: (verificationId, resendToken) async{},
//      codeAutoRetrievalTimeout: null);
//
//}

Future<void> signOutUser() async {

  final gooleSignIn = GoogleSignIn();
  // final facebookLogin = FacebookLogin();
//  if (user.providerData[0].providerId == 'google.com') {
//    await gooleSignIn.disconnect();
//  }
//  await gooleSignIn.disconnect();
//  await googleSignIn.signOut();
//  await facebookLogin.logOut();
  await FirebaseAuth.instance.signOut();

}