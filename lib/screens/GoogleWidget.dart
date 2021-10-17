import 'package:flutter/material.dart';
import 'package:mad_mini_project/auth/SignIn.dart';
import 'package:mad_mini_project/screens/book_home.dart';
import 'package:page_transition/page_transition.dart';

class GoogleWidget extends StatefulWidget {
  @override
  _GoogleWidgetState createState() => _GoogleWidgetState();
}

class _GoogleWidgetState extends State<GoogleWidget> {

  static const white = const Color(0xffFFFFFF);
  static const lightGrey = const Color(0xffE3E3E3);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(

        onPressed: () async {
//          User user =
          await googleSignIn();
          print("##################################");
//          print(user);
          Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  child: BooksHome()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("lib/assets/images/google.png"),
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
    );
  }
}
