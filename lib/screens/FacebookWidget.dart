// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:shellcode/auth/SignIn.dart';
// import 'package:shellcode/screens/Dashboard.dart';
//
//
// class FacebookWidget extends StatefulWidget {
//   @override
//   _FacebookWidgetState createState() => _FacebookWidgetState();
// }
//
// class _FacebookWidgetState extends State<FacebookWidget> {
//
//   static const white = const Color(0xffFFFFFF);
//   static const lightGrey = const Color(0xffE3E3E3);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:   RaisedButton(
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(100)),
//         color: white,
//         onPressed: () async{
//           await facebookSignIn();
//           Navigator.pushReplacement(
//               context,
//               PageTransition(
//                   type: PageTransitionType.fade,
//                   duration: Duration(seconds: 1),
//                   alignment: Alignment.center,
//                   child: Dashboard()));
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: lightGrey,
//             borderRadius: BorderRadius.circular(50),
//           ),
//           child: Container(
//             margin: EdgeInsets.all(10),
//             child: Image(
//               image: AssetImage("lib/assets/images/facebook.png"),
//               height: 30,
//               width: 30,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
