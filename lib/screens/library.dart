import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_mini_project/screens/book_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'book_model.dart';
import 'book_read.dart';
import 'books_details.dart';

class Library extends StatefulWidget {
  final List<int> l;
  Library({required this.l});
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  
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
  
  String name = "";
  int len=0;
  List<int> l =[];
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
   await FirebaseFirestore.instance.collection(name).get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data()["index"]);
        l.add(result.data()["index"]);
      });
    });
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    print(l);
    len = l.length;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
        title: Text("Library"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BooksHome(),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/Home2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: widget.l.length,
          itemBuilder: (ctx, i) => GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => BooksDetails(
                  index: i,
                  selected: true,
                ),
              ),
            ),
            child: SingleChildScrollView(
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
                                allBooks[widget.l[i]].name,
                                style: GoogleFonts.poppins( color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Author: ${allBooks[widget.l[i]].author}",style: GoogleFonts.poppins( color: Colors.black, fontSize: 16),),

                            ],
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  // "assets/images/0.jfif",
                  allBooks[widget.l[i]].coverImage,
                  fit: BoxFit.fill,
                ),
              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(

                            flex:2,
                            child: Container(
                              height: 40.0,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color.fromRGBO(34, 150, 242, 1),

                              ),
                              child: FlatButton(
                                color: Colors.lightGreen,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BooksRead(  index: widget.l[i], selected: true, ),
                                  ),
                                ),
                                child: Text(
                                  "READ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(

                            flex:2,
                            child: Container(
                              height: 40.0,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color.fromRGBO(34, 150, 242, 1),

                              ),
                              child: FlatButton(
                                color: Colors.lightGreen,
                                onPressed: () async {
                                  await FirebaseFirestore.instance.collection(name).doc(widget.l[i].toString()).delete();
List<int> x=[];
await FirebaseFirestore.instance.collection(name).get().then((querySnapshot) {
  querySnapshot.docs.forEach((result) {
    print(result.data()["index"]);
    x.add(result.data()["index"]);
  });
});
                                  Navigator.of(context).pop();Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Library(l: x),
                                    ),
                                  );

                                },
                                child: Text(
                                  "REMOVE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
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
            ),
          ),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
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