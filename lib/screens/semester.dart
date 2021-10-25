import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_mini_project/screens/sem6.dart';

class Semester extends StatelessWidget {
  const Semester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semester"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 10,),

            // Row(
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width*0.5,
            //       height: 155,
            //       padding: EdgeInsets.only(left: 15,right: 3),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //       ),
            //       child: RaisedButton(
            //         onPressed: (){
            //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
            //         },
            //         color: Colors.lightGreen,
            //         child: SingleChildScrollView(
            //           physics: BouncingScrollPhysics(),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                   color: Colors.lightGreen[300],
            //                   borderRadius: BorderRadius.circular(50),
            //                 ),
            //                 child: Container(
            //                   margin: EdgeInsets.all(10),
            //                   child: Image(
            //                     image: AssetImage("lib/assets/icons/subscription.png"),
            //                     height: 20,
            //                     width: 20,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Semester 1",
            //                 style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: MediaQuery.of(context).size.width*0.5,
            //       height: 155,
            //       padding: EdgeInsets.only(left:3,right: 15,),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //       ),
            //       child: RaisedButton(
            //         onPressed: (){
            //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
            //         },
            //         color: Colors.lightGreen,
            //         child: SingleChildScrollView(
            //           physics: BouncingScrollPhysics(),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                   color: Colors.lightGreen[300],
            //                   borderRadius: BorderRadius.circular(50),
            //                 ),
            //                 child: Container(
            //                   margin: EdgeInsets.all(10),
            //                   child: Image(
            //                     image: AssetImage("lib/assets/icons/how_app_works.png"),
            //                     height: 20,
            //                     width: 20,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Semester 2",
            //                 style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // SizedBox(
            //   height: 8,
            // ),

            //
            // Row(
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width*0.5,
            //       height: 155,
            //       padding: EdgeInsets.only(left: 15,right: 3),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //       ),
            //       child: RaisedButton(
            //         onPressed: (){
            //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
            //         },
            //         color: Colors.lightGreen,
            //         child: SingleChildScrollView(
            //           physics: BouncingScrollPhysics(),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                   color: Colors.lightGreen[300],
            //                   borderRadius: BorderRadius.circular(50),
            //                 ),
            //                 child: Container(
            //                   margin: EdgeInsets.all(10),
            //                   child: Image(
            //                     image: AssetImage("lib/assets/icons/subscription.png"),
            //                     height: 20,
            //                     width: 20,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Semester 3",
            //                 style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: MediaQuery.of(context).size.width*0.5,
            //       height: 155,
            //       padding: EdgeInsets.only(left:3,right: 15,),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //       ),
            //       child: RaisedButton(
            //         onPressed: (){
            //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
            //         },
            //         color: Colors.lightGreen,
            //         child: SingleChildScrollView(
            //           physics: BouncingScrollPhysics(),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                   color: Colors.lightGreen[300],
            //                   borderRadius: BorderRadius.circular(50),
            //                 ),
            //                 child: Container(
            //                   margin: EdgeInsets.all(10),
            //                   child: Image(
            //                     image: AssetImage("lib/assets/icons/how_app_works.png"),
            //                     height: 20,
            //                     width: 20,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Semester 4",
            //                 style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // SizedBox(
            //   height: 8,
            // ),


            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 155,
                  padding: EdgeInsets.only(left: 15,right: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
                    },
                    color: Colors.lightGreen,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("lib/assets/icons/subscription.png"),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Semester 5",
                            style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 155,
                  padding: EdgeInsets.only(left:3,right: 15,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
                    },
                    color: Colors.lightGreen,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("lib/assets/icons/subscription.png"),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Semester 6",
                            style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 8,
            ),


            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 155,
                  padding: EdgeInsets.only(left: 15,right: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
                    },
                    color: Colors.lightGreen,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("lib/assets/icons/subscription.png"),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Semester 7",
                            style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: 155,
                  padding: EdgeInsets.only(left:3,right: 15,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sem6()));
                    },
                    color: Colors.lightGreen,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                image: AssetImage("lib/assets/icons/subscription.png"),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Semester 8",
                            style: GoogleFonts.poppins( color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 8,
            ),




            // BookSection(
            //   heading: "Reading List",
            // ),
          ],
        ),
      ),
    );
  }
}
