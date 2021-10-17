import 'package:flutter/material.dart';
import 'package:mad_mini_project/screens/book_home.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:mad_mini_project/screens/login.dart';
import 'package:mad_mini_project/screens/onboardingscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async  {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 if(FirebaseAuth.instance.currentUser?.uid == null){
runApp(MaterialApp(
 home: BooksSplash(),
));
 } else {
// logged
  runApp(MaterialApp(
    home: BooksHome(),
  ));
 }
 // runApp(
 //   MaterialApp(
 //     home: Onboard(),
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      initialRoute: '/login',
//      routes: {
//        '/onBoard':(context)=>OnboardingScreen(),
//        "/otp":(context)=>OTP(),
//        "/login":(context)=>Login(),
//      },
//    ),
//  );
}
//
// class mainPage extends StatefulWidget {
//   @override
//   _mainPageState createState() => _mainPageState();
// }
//
// class _mainPageState extends State<mainPage> {
//   Future<bool> onBoardingShown() async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     // bool val = sharedPreferences.getBool('onboard');
//     bool val=true;
//     if(val==null){
//       return false;
//     }else{
//       return val;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<bool>(
//       future: onBoardingShown(),
//       builder: (context,snapshot){
//         if(snapshot.hasData){
//           if(FirebaseAuth.instance.currentUser?.uid==null && FacebookAuth.instance.accessToken == null){
//             return Onboard();
//           }else{
//             return Onboard();
//           }
//         }else{
//           return Onboard();
//         }
//       },
//     );
//   }
// }
