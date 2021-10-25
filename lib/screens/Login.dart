import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_mini_project/screens/Admindashboard.dart';
import 'package:mad_mini_project/screens/book_home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  bool showLoading=false;
  String verificationId="";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    pass.dispose();
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
          color: Colors.lightGreen,
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
                        color: Colors.lightGreen,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
                      child: Image(
                        image: AssetImage("lib/assets/images/Login.jpeg"),
                        height: MediaQuery.of(context).size.height * 0.20,
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:  white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      ),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  RaisedButton(
                                    color: Colors.lightGreen,
                                    onPressed: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10,bottom: 10),
                                      child:  Icon(Icons.person,color: white,size: 25,),
                                      color: Colors.lightGreen,
                                    ),
                                  ),


                                  Container(
                                    width: MediaQuery.of(context).size.width*0.61,
                                    height: 48,
//                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.11),
                                    child: TextFormField(
                                      textAlignVertical: TextAlignVertical.center,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      controller: name,
                                      decoration: InputDecoration(
                                        hintText: '',
                                        fillColor: offWhite,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen,width: 2),
                                        ),
                                      ),
                                      validator: (val) => val!.isEmpty ? 'Enter Full Name': null,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  RaisedButton(
                                    color: Colors.lightGreen,
                                    onPressed: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10,bottom: 10),
                                      child:   Icon(Icons.mail,color: white,size: 25,),
                                      color: Colors.lightGreen,
                                    ),
                                  ),


                                  Container(
                                    width: MediaQuery.of(context).size.width*0.61,
                                    height: 48,
//                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.11),
                                    child: TextFormField(
                                      textAlignVertical: TextAlignVertical.center,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      controller: email,

                                      decoration: InputDecoration(
                                        hintText: '',
                                        fillColor: offWhite,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen,width: 2),
                                        ),
                                      ),
                                      validator: (val) => val!.isEmpty ? 'Enter Email Address': null,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  RaisedButton(
                                    color: Colors.lightGreen,
                                    onPressed: (){},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10,bottom: 10),
                                      child:  Icon(Icons.lock,color: white,size: 25,),
                                      color: Colors.lightGreen,
                                    ),
                                  ),


                                  Container(
                                    width: MediaQuery.of(context).size.width*0.61,
                                    height: 48,
//                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.11),
                                    child: TextFormField(
                                      textAlignVertical: TextAlignVertical.center,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                      controller: pass,
obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: '',
                                        fillColor: offWhite,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.lightGreen,width: 2),
                                        ),
                                      ),
                                      validator: (val) => val!.isEmpty ? 'Enter the Password': null,
                                    ),
                                  ),
                                ],
                              ),
                            ),



                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.11,right: MediaQuery.of(context).size.width*0.11,top: 20),
                              child: RaisedButton(
                                color: Colors.lightGreen,
                                onPressed: () async{

                                  setState(() {
                                    showLoading = true;
                                  });

                                  try {
                                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                        email:email.text.toString() ,
                                        password: pass.text.toString(),
                                    );
                                    final prefs = await SharedPreferences.getInstance();
                                    if(email.text.toString()=='admin@gmail.com' && pass.text.toString()=='admin1'){
                                      await prefs.setString('Name', "Admin");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Admindashboard(),
                                          ));
                                    }
                                    else{
                                      await prefs.setString('Name', name.text.toString());
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BooksHome(),
                                          ));
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'user-not-found') {
                                      print('No user found for that email.');
                                    } else if (e.code == 'wrong-password') {
                                      print('Wrong password provided for that user.');
                                    }
                                  }
                                  // FirebaseAuth auth = FirebaseAuth.instance;
                                  // auth.verifyPhoneNumber(
                                  //
                                  //     phoneNumber: "+91${phone.text}",
                                  //     timeout: Duration(seconds: 60),
                                  //     verificationCompleted:(phoneAuthCredential) async{
                                  //       setState(() {
                                  //         showLoading = false;
                                  //       });
                                  //     },
                                  //     verificationFailed: (verificationFailed) async{
                                  //       setState(() {
                                  //         showLoading = false;
                                  //       });
                                  //
                                  //       // _scaffoldKey.currentState.showSnackBar(
                                  //       //     SnackBar(backgroundColor: blue1, content: Text("Invalid Mobile Number, Please Provide a Valid Number", style: GoogleFonts.poppins( color: blue1, fontSize: 16),)));
                                  //     },
                                  //
                                  //     codeSent: (verificationId, resendToken) async{
                                  //       setState(() {
                                  //         showLoading = false;
                                  //         this.verificationId = verificationId;
                                  //       });
                                  //       Navigator.push( context, PageTransition(type: PageTransitionType.fade, alignment: Alignment.topCenter, child: OTP( verificationId: verificationId,phone: phone.text.trim())));
                                  //
                                  //
                                  //     },
                                  //     codeAutoRetrievalTimeout: (y){}
                                  // );


//            otpLogin("+91${phone.text}", context);
//            Navigator.of(context).pushReplacement(MaterialPageRoute(
//              builder: (context) => OTP(phone: phone.text))
//          );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10,bottom: 10),
                                  child: Text("Login", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 18.0,
                                      color: Colors.white),),
                                  color: Colors.lightGreen,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
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

