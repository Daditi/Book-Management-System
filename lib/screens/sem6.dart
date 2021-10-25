

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'book_model.dart';
import 'books_details.dart';
class Sem6 extends StatefulWidget {
  const Sem6({Key? key}) : super(key: key);

  @override
  _Sem6State createState() => _Sem6State();
}

class _Sem6State extends State<Sem6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Semester VII"),centerTitle: true, backgroundColor: Colors.lightGreen,),
      body: Container(
        color: Colors.lightGreen[100],
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(child: BookSection( heading: "Reading List",))),
      ),
    );
  }
}

class BookSection extends StatelessWidget {
  List<Book> allBooks = [
    Book(
        name: "Recipie For a Person",
        author: "Karma Brown",
        coverImage: "lib/assets/images/3.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
    Book(
        name: "The Glass Hotel",
        author: "Emily St. John Mandel",
        coverImage: "lib/assets/images/4.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
    Book(
        name: "Conjure Women",
        author: "Afia Atakora",
        coverImage: "lib/assets/images/0.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
    Book(
        name: "Felix Ever After",
        author: "Kacen Callender",
        coverImage: "lib/assets/images/1.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
    Book(
        name: "From The Ashes",
        author: "Jesse Thistle",
        coverImage: "lib/assets/images/2.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
    Book(
        name: "City of Girls",
        author: "Elizabeth Gilbert",
        coverImage: "lib/assets/images/5.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."

    ),
    Book(
        name: "Everything I never..",
        author: "Cebste NG",
        coverImage: "lib/assets/images/6.png",
        rating: 4.0,
        text: "On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\nSoon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\nJo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
    ),
  ];



  final String heading;
  BookSection({required this.heading});
  @override
  Widget build(BuildContext context) {
    List<Book> bookList;

    bookList = allBooks;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(

            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10
            ),
            height: MediaQuery.of(context).size.height * 0.99,
            child: ListView.builder(
              itemBuilder: (ctx, i) => Container(
margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                padding: EdgeInsets.all(10),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),

                child: GestureDetector(
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    final name = (await prefs.getString('Name'))!;
                    await FirebaseFirestore.instance.collection(name).doc(i.toString()).get().then((DocumentSnapshot documentSnapshot) {
                      if (documentSnapshot.exists) {
                        print('Document exists on the database');
                        prefs.setBool('selected', true);
                        bool selected = (prefs.getBool('selected'))!;
                      }else{
                        print('Document not');
                        prefs.setBool('selected', false);
                        bool selected = false;
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => BooksDetails(
                            index: i,
                            selected: (prefs.getBool('selected'))!
                        ),
                      ),
                    );
                  } ,
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
                                  allBooks[i].name,
                                  style: GoogleFonts.poppins( color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(allBooks[i].author,style: GoogleFonts.poppins( color: Colors.black, fontSize: 16),),
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Image.asset(
                                                  allBooks[i].coverImage,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],

                  ),


                  // child: Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           margin: EdgeInsets.only(
                  //             top: 10,
                  //             left: 5,
                  //           ),
                  //           height: MediaQuery.of(context).size.height * 0.27,
                  //           width: MediaQuery.of(context).size.width * 0.4,
                  //           child: Stack(
                  //             children: [
                  //               Container(
                  //                 width: double.infinity,
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   boxShadow: <BoxShadow>[
                  //                     BoxShadow(
                  //                       color: Colors.black.withOpacity(0.4),
                  //                       blurRadius: 5,
                  //                       offset: Offset(8, 8),
                  //                       spreadRadius: 1,
                  //                     )
                  //                   ],
                  //                 ),
                  //                 child: ClipRRect(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   child: Image.asset(
                  //                     allBooks[i].coverImage,
                  //                     fit: BoxFit.fill,
                  //                   ),
                  //                 ),
                  //               ),
                  //               Container(
                  //                 height:
                  //                 MediaQuery.of(context).size.height * 0.27,
                  //                 width: double.infinity,
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   gradient: new LinearGradient(
                  //                     colors: [
                  //                       Colors.black.withOpacity(0.4),
                  //                       Colors.transparent,
                  //                       Colors.black.withOpacity(0.4),
                  //                     ],
                  //                     begin: Alignment.centerLeft,
                  //                     end: Alignment.centerRight,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         SizedBox(height: 16),
                  //         Text(
                  //           allBooks[i].name,
                  //           style: TextStyle(
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w700,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 2,
                  //         ),
                  //         Text(
                  //           allBooks[i].author,
                  //           style: TextStyle(
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     SizedBox(
                  //       width: 30,
                  //     ),
                  //   ],
                  // ),
                ),
              ),
              itemCount: allBooks.length,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}
