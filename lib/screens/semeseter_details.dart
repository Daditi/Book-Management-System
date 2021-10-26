import 'package:flutter/material.dart';

class SemesterDetails extends StatelessWidget {
  final String title;
  final String text;

 SemesterDetails({required this.title, required this.text});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 40,
                    right: 20,
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      height: 1.5,
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
