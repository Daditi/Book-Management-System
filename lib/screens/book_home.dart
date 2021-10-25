import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_mini_project/auth/signin.dart';
import 'package:mad_mini_project/screens/library.dart';
import 'package:mad_mini_project/screens/sem6.dart';
import 'package:mad_mini_project/screens/semester.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'book_data.dart';
import 'book_model.dart';
import 'books_details.dart';
import 'books_profile.dart';
import 'onboardingscreen.dart';

class BooksHome extends StatefulWidget {

  @override
  State<BooksHome> createState() => _BooksHomeState();
}

class _BooksHomeState extends State<BooksHome> {

  String name = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name();
  }

  void _name() async {
    final prefs = await SharedPreferences.getInstance();
    name = (await prefs.getString('Name'))!;
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    print(name);
    if(name==null){
      name="Welcome";
    }

  }
List<int> l=[];
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
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 70,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.library_books,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () async{
                      await FirebaseFirestore.instance.collection(name).get().then((querySnapshot) {
                        querySnapshot.docs.forEach((result) {
                          print(result.data()["index"]);
                          l.add(result.data()["index"]);
                        });
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Library(l:l),
                        ),
                      );
                    }

                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Semester(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () async {
                      await signOutUser();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BooksSplash(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 50,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "       Welcome to  ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "BookLib",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                          left: 35,
                          bottom: 30,
                        ),
                        width: 200,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.lightGreen[800],
                        ),
                      ),

                      BookSection(
                        heading: "       Reading List",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemBuilder: (ctx, i) => GestureDetector(
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
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                            left: 5,
                          ),
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.4),
                                      blurRadius: 5,
                                      offset: Offset(8, 8),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    allBooks[i].coverImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: new LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.4),
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.4),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          allBooks[i].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          allBooks[i].author,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              itemCount: allBooks.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
