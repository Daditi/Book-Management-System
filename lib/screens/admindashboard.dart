

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book_read.dart';
class Admindashboard extends StatefulWidget {
  @override
  _AdmindashboardState createState() => _AdmindashboardState();
}

class _AdmindashboardState extends State<Admindashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/assets/images/Home2.png"),
    fit: BoxFit.cover,
    ),
    ),
          child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('Admin').snapshots(),
              builder:
                  (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView(
                  children: snapshot.data!.docs.map((document) {
print(document['author']);
                    return Center(
                      child: Container(

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        document['issuer'],
                                        style: GoogleFonts.poppins( color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(document['bookName'],style: GoogleFonts.poppins( color: Colors.black, fontSize: 16),),

                                      Text(document['author'],style: GoogleFonts.poppins( color: Colors.black, fontSize: 16),),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      // "assets/images/0.jfif",
                                      document["url"],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],

                        ),
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ) ,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 2,
                        ) ,

                      ),
                    );
                  }).toList(),
                );
              }),
    ),);
  }
}



Widget Tile(){
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Container(

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Tempest",
                      style: GoogleFonts.poppins( color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Author: William Shakespeare",style: GoogleFonts.poppins( color: Colors.black, fontSize: 16),),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("lib/assets/images/Login.jpeg"),
                  height: 70,
                  // width: MediaQuery.of(context).size.width*0.1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Expanded(

                  flex:2,
                  child: buildButtonContainer('View')),
              SizedBox(width: 15,),
              Expanded(

                  flex:2,
                  child: buildButtonContainer('Delete')),
            ],
          ),
        ],

      ),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ) ,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 2,
      ) ,

    ),
  );
}



Widget buildButtonContainer(String str){
  return Container(
    height: 40.0,
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: Color.fromRGBO(34, 150, 242, 1),

    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(34, 150, 242, 1),
      ),
      onPressed: (){
        // Navigator. push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Checkout()),
        // );
      } ,
      child: Text(
        str,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),

    ),
  );

}
