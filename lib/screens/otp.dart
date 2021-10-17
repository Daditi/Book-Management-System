// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:shellcode/screens/Dashboard.dart';
//
// class OTP extends StatefulWidget {
//
//   String phone;
//   String verificationId;
//
//   OTP( {this.verificationId,this.phone});
//   @override
//   _OTPState createState() => _OTPState();
// }
//
// class _OTPState extends State<OTP> {
//
//   static const blue1 = const Color(0xff2296F2);
//   static const blue2 = const Color(0xff1572BB);
//   static const blue3 = const Color(0xff004E8C);
//   static const white = const Color(0xffFFFFFF);
//   bool showLoading=false;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   String pin;
//
//
//   void signInWithPhoneAuthCredential(PhoneAuthCredential phoneAuthCredential) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     setState(() {
//       showLoading = true;
//     });
//     try {
//       final authCredential =
//       await auth.signInWithCredential(phoneAuthCredential);
//       setState(() {
//         showLoading = false;
//       });
//       if(authCredential?.user != null){
//         Navigator.pushReplacement(
//             context,
//             PageTransition(
//                 type: PageTransitionType.fade,
//                 duration: Duration(seconds: 1),
//                 alignment: Alignment.center,
//                 child: Dashboard()));
//       }
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         showLoading = false;
//       });
//       _scaffoldKey.currentState
//           .showSnackBar(SnackBar(backgroundColor: blue1, content: Text("Incorrect OTP", style: GoogleFonts.poppins( color: blue1, fontSize: 16),)));
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       backgroundColor: blue1,
//       body: Container(
//         child: showLoading? Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircularProgressIndicator(backgroundColor: white,),
//           ],
//         ) : GestureDetector(
// onTap: (){
//   FocusScope.of(context).unfocus();
// },
//           child: SingleChildScrollView(
//             reverse: true,
//             child: Center(
//               child: SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//
//                     Container(
//                       margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
//                       child: Image(
//                         image: AssetImage("lib/assets/images/OTP.jpeg"),
//                         height: MediaQuery.of(context).size.height * 0.30,
//                       ),
//                     ),
//
//                     Container(
//                       height: MediaQuery.of(context).size.height*0.5,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                         color: white,
//                           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
//                       ),
//                       child: SingleChildScrollView(
//                         physics: BouncingScrollPhysics(),
//                         child: Column(
//                           children: [
//
//                             Container(
//                               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07,),
//                               child: Text(
//                                 "Verification",
//                                 style: GoogleFonts.poppins(
//                                     color: blue2, fontWeight: FontWeight.w500, fontSize: 24,letterSpacing: 0.7
//                                 ),
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("Enter the code sent to ", style: GoogleFonts.poppins( color: blue1,fontSize: 16),),
//                                   Text( "+91 ${widget.phone}", style: GoogleFonts.poppins( color: blue3, fontSize: 16),)
//                                 ],
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,left: MediaQuery.of(context).size.height*0.03,right:MediaQuery.of(context).size.height*0.03),
//                               child: PinCodeTextField(
//                                 appContext: context,
//                                 length: 6,
//                                 onChanged: (value) {
//                                   print(value);
//                                 },
//                                 pinTheme: PinTheme(
//                                   shape: PinCodeFieldShape.box,
//                                   borderRadius: BorderRadius.circular(5),
//                                   fieldHeight: 40,
//                                   fieldWidth: 40,
//                                   inactiveColor: blue1,
//                                   inactiveFillColor: white,
//                                   activeColor: blue1,
//                                   activeFillColor: blue1,
//                                   selectedColor: blue1,
//                                   selectedFillColor: blue1,
//                                 ),
//                                 textStyle: GoogleFonts.poppins(color: white,fontSize: 20),
//                                 cursorColor: white,
//                                 backgroundColor: white,
//                                 keyboardType: TextInputType.number,
//                                 enableActiveFill: true,
//                                 onCompleted: (value){
//                                   pin = value;
//                                 },
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("Didnt recieve the code ? ", style: GoogleFonts.poppins( color: blue1,fontSize: 16),),
//                            Text("Resend", style: GoogleFonts.poppins( color: blue3, fontSize: 16)),
// //                                 InkWell(onTap: (){
// //                                   setState(() {
// //                                     showLoading = true;
// //                                   });
// //                                   FirebaseAuth auth = FirebaseAuth.instance;
// //                                   auth.verifyPhoneNumber(
// //                                     phoneNumber: "+91${widget.phone}",
// //                                     verificationCompleted:(phoneAuthCredential) async{},
// //                                     verificationFailed: (verificationFailed) async{
// //                                       setState(() {
// //                                         showLoading = false;
// //                                       });
// //                                       _scaffoldKey.currentState.showSnackBar(
// //                                           SnackBar(content: Text("Try Login Again")));
// //                                     },
// //                                     codeSent: (verificationId, resendToken) async{
// //                                       setState(() {
// //                                         showLoading=false;
// //                                         widget.verificationId=verificationId;
// //                                       });
// //                                     },
// //                    codeAutoRetrievalTimeout: (y){}
// //                                   );
// //
// //                                 }, child: Text("Resend", style: GoogleFonts.poppins( color: blue3, fontSize: 16)),  ),
//                                 ],
//                               ),
//                             ),
//
//                             Container(
//                               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,left: MediaQuery.of(context).size.height*0.07,right:MediaQuery.of(context).size.height*0.07),
//                               child: ElevatedButton(
//                                 onPressed: (){
// PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: widget.verificationId, smsCode: pin );
//                                   signInWithPhoneAuthCredential(phoneAuthCredential);
// //                            Navigator.of(context).pushReplacement(MaterialPageRoute(
// //                                builder: (context) => Login())
// //                            );
//
//                                 },
//                                 child: Container(
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text("Verify ", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
//                                           fontStyle:  FontStyle.normal,
//                                           fontSize: 18.0,
//                                           color: white),),
//                                       Icon(Icons.verified_user_outlined, color: white,)
//                                     ],
//                                   ),
//                                   color: blue1,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
class OTP extends StatefulWidget {

  String phone;
  String verificationId;

  OTP( {required this.verificationId,required this.phone});

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
