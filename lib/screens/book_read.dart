import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'book_model.dart';

class BooksRead extends StatefulWidget {

  final int index;
  bool selected;
  BooksRead({required this.index,required this.selected});

  @override
  State<BooksRead> createState() => _BooksReadState();
}

class _BooksReadState extends State<BooksRead> {
  String name = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name();
  }

  Future<void> _name() async {
    final prefs = await SharedPreferences.getInstance();
    name = (await prefs.getString('Name'))!;
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    print(name);

     }


  List<Book> allBooks = [
    Book(
        name: "Recipie For a Person",
        author: "Karma Brown",
        coverImage: "lib/assets/images/3.png",
        rating: 4.0,
        text: "     On Christmas morning, the girls wake up to find books, probably copies of The Pilgrim’s Progress, under their pillows. Later that day, Marmee encourages them to give away their breakfast to a poor family, the Hummels. Their elderly neighbor, Mr. Laurence, whom the girls have never met, rewards their charitable activities by sending over a feast. "
            "\n     Soon, Meg and Jo are invited to attend a New Year’s Party at the home of Meg’s wealthy friend, Sally Gardiner. At the party, Jo retreats to an alcove, and there meets Laurie, the boy who lives with Mr. Laurence. While dancing, Meg sprains her ankle. Laurie escorts the sisters home. The Marches regret having to return to their daily routine after the holiday festivities."
            "\n     Jo visits Laurie when he is sick, and meets his grandfather, Mr. Laurence. She inadvertently insults a painting of Mr. Laurence in front of the man himself. Luckily, Laurie’s grandfather admires Jo’s spunk, and they become friends. Soon, Mr. Laurence meets all the sisters, and Beth becomes his special favorite. Mr. Laurence gives her his deceased granddaughter’s piano."
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.lightGreen,
                              size: 35,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: widget.selected ? Icon(
                              Icons.check_circle_rounded,
                              color: Colors.black,
                              size: 35,
                            ):Icon(
                              Icons.my_library_add_rounded,
                              color: Colors.lightGreen,
                              size: 35,
                            ),
                            onPressed: () async {
                              print("@@@@@@@@@@@@@");
                           if(!widget.selected){
                             await  FirebaseFirestore.instance
                                 .collection(name).doc(widget.index.toString()).set({  'author': allBooks[widget.index].author, // John Doe
                               'bookName': allBooks[widget.index].name, // Stokes and Sons
                               'index': widget.index ,// 42,
                               'issuer': name,
                               'url': allBooks[widget.index].coverImage,});
                             setState(() {
                               widget.selected=!widget.selected;
                             });
                             final prefs = await SharedPreferences.getInstance();
                             name = (await prefs.getString('Name'))!;
                             FirebaseFirestore.instance.collection('Admin').add({
                               'author': allBooks[widget.index].author, // John Doe
                               'bookName': allBooks[widget.index].name, // Stokes and Sons
                               'index': widget.index ,// 42,
                               'issuer': name,
                               'url': allBooks[widget.index].coverImage,
                             }).then((value) => print("User Added"))
                                 .catchError((error) => print("Failed to add user: $error"));
                           }

                            },
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                            right: 20,
                          ),
                          child: Text(
                            allBooks[widget.index].text,
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.5,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //     vertical: 10,
                    //     horizontal: 20,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       FlatButton.icon(
                    //         onPressed: () {},
                    //         icon: Icon(
                    //           Icons.bookmark,
                    //         ),
                    //         label: Text(
                    //           "Notes",
                    //           style: TextStyle(
                    //             fontSize: 22,
                    //           ),
                    //         ),
                    //       ),
                    //       RichText(
                    //         text: TextSpan(children: [
                    //
                    //           // TextSpan(
                    //           //   text: ,
                    //           //   style: TextStyle(
                    //           //     fontSize: 20,
                    //           //     color: Colors.grey,
                    //           //   ),
                    //           // ),
                    //         ]),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
