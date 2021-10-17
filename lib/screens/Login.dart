import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'GoogleWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'FacebookWidget.dart';
import 'OTP.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  static const blue1 = const Color(0xff2296F2);
  static const black = const Color(0xff464646);
  static const white = const Color(0xffFFFFFF);
  static const offWhite = const Color(0xffF3F0F0);
  static const grey = const Color(0xffA4A4A4);
  final phone = TextEditingController();
  bool showLoading=false;
  String verificationId="";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: blue1,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Color(0xffc44536),
          child: showLoading? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(backgroundColor: white,),
            ],
          ) : GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child:  Center(

              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                        color: Color(0xffc44536),
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
                      child: Image(
                        image: AssetImage("lib/assets/images/Login.jpeg"),
                        height: MediaQuery.of(context).size.height * 0.30,
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:  Color(0xfffff8ee),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      ),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            // Container(
                            //   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07,left:MediaQuery.of(context).size.width*0.11 ),
                            //   child:
                            //   Row(
                            //     mainAxisAlignment: MainAxisAlignment.start,
                            //     children: [
                            //       Icon(Icons.phone,color: blue1,size: 24,),
                            //       Text("  Enter Mobile Number", style: GoogleFonts.poppins( color: black, fontSize: 18),)
                            //     ],
                            //   ),
                            // ),

//                             Container(
//                               margin: EdgeInsets.only(top: 20),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//
//                                   ElevatedButton(
//                                     onPressed: (){},
//                                     child: Container(
//                                       margin: EdgeInsets.only(top: 10,bottom: 10),
//                                       child: Text("+91", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
//                                           fontStyle:  FontStyle.normal,
//                                           fontSize: 18.0,
//                                           color: Colors.white),),
//                                       color: blue1,
//                                     ),
//                                   ),
//
//                                   Container(
//                                     width: MediaQuery.of(context).size.width*0.61,
//                                     height: 48,
// //                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.11),
//                                     child: TextFormField(
//                                       textAlignVertical: TextAlignVertical.center,
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                       ),
//                                       controller: phone,
//
//                                       decoration: InputDecoration(
//                                         hintText: '',
//                                         fillColor: offWhite,
//                                         filled: true,
//                                         enabledBorder: OutlineInputBorder(
//                                           borderSide: BorderSide(color: blue1, width: 2),
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                           borderSide: BorderSide(color: blue1,width: 2),
//                                         ),
//                                       ),
//                                       validator: (val) => val!.isEmpty ? 'Enter the Mobile Number': null,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),



//                             Container(
//                               width: MediaQuery.of(context).size.width,
//                               margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.11,right: MediaQuery.of(context).size.width*0.11,top: 20),
//                               child: ElevatedButton(
//                                 onPressed: (){
//
//                                   setState(() {
//                                     showLoading = true;
//                                   });
//
//                                   FirebaseAuth auth = FirebaseAuth.instance;
//                                   auth.verifyPhoneNumber(
//
//                                       phoneNumber: "+91${phone.text}",
//                                       timeout: Duration(seconds: 60),
//                                       verificationCompleted:(phoneAuthCredential) async{
//                                         setState(() {
//                                           showLoading = false;
//                                         });
//                                       },
//                                       verificationFailed: (verificationFailed) async{
//                                         setState(() {
//                                           showLoading = false;
//                                         });
//
//                                         // _scaffoldKey.currentState.showSnackBar(
//                                         //     SnackBar(backgroundColor: blue1, content: Text("Invalid Mobile Number, Please Provide a Valid Number", style: GoogleFonts.poppins( color: blue1, fontSize: 16),)));
//                                       },
//
//                                       codeSent: (verificationId, resendToken) async{
//                                         setState(() {
//                                           showLoading = false;
//                                           this.verificationId = verificationId;
//                                         });
//                                         Navigator.push( context, PageTransition(type: PageTransitionType.fade, alignment: Alignment.topCenter, child: OTP( verificationId: verificationId,phone: phone.text.trim())));
//
//
//                                       },
//                                       codeAutoRetrievalTimeout: (y){}
//                                   );
//
//
// //            otpLogin("+91${phone.text}", context);
// //            Navigator.of(context).pushReplacement(MaterialPageRoute(
// //              builder: (context) => OTP(phone: phone.text))
// //          );
//                                 },
//                                 child: Container(
//                                   margin: EdgeInsets.only(top: 10,bottom: 10),
//                                   child: Text("Send OTP", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
//                                       fontStyle:  FontStyle.normal,
//                                       fontSize: 18.0,
//                                       color: Colors.white),),
//                                   color: blue1,
//                                 ),
//                               ),
//                             ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                height: 1.75,
                                letterSpacing: 2,
                                color: Color(0xffC44536),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),

                            Container(
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  GoogleWidget(),
                                  // FacebookWidget(),

                                ],
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            // Text("We are an Indian company, we don't share your personal", style: GoogleFonts.poppins( color: grey,fontSize: 12),),
                            // Text("details to anyone for security reason", style: GoogleFonts.poppins( color: grey, fontSize: 12),),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

