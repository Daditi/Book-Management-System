

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_mini_project/screens/semeseter_details.dart';
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
      appBar: AppBar(title: Text("Semester VI"),centerTitle: true, backgroundColor: Colors.lightGreen,),
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
  name: "CCS Cloud Computing Bible",
  author: "Barrie Sosinsky",
  coverImage: "lib/assets/images/ccs1.jpeg",
  rating: 4.0,
  text: "Cloud computing presents new opportunities to users and developers because it is based on the para-digm of a shared multitenant utility. The ability to access pooled resources on a pay-as-you-go basisprovides a number of system characteristics that completely alter the economics of information tech-nology infrastructures and allows new types of access and business models for user applications.Any application or process that benefits from economies of scale, commoditization of assets, and conformance to programming standards benefits from the application of cloud computing. Any application or process that requires a completely customized solution, imposes a high degree of specialization, and requires access to proprietary technology is going to expose the limits of cloud computing rather quickly. Applications that work with cloud computing are ones that I refer to as low touch” applications; they tend to be applications that have low margins and usually low risk.The “high touch” applications that come with high margins require committed resources and pose more of a risk; those applications are best done on-premises.A cloud is defined as the combination of the infrastructure of a datacenter with the ability to provision hardware and software. A service that concentrates on hardware follows the Infrastructure as aService (IaaS) model, which is a good description for the Amazon Web Service described in Chapter 9. When you add a software stack, such as an operating system and applications to the service, the model shifts to the Software as a Service (SaaS) model. Microsoft’s Windows Azure Platform, discussed in Chapter 10, is best described as currently using SaaS model. When the service requires the client to use a complete hardware/software/application stack, it is using the most refined and restrictive service model, called the Platform as a Service (PaaS) model. The best example of a PaaS offering is probably SalesForce.com. The Google App Engine discussed in Chapter 11is another PaaS. As the Windows Azure Platform matures adding more access to Microsoft servers, it is developing into a PaaS model rather quickly. "
  ),
  Book(
  name: "CCS Cloud Computing and Services",
  author: "Pankaj Brahmankar",
  coverImage: "lib/assets/images/ccs2.jpeg",
  rating: 4.0,
  text: "Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. Large clouds often have functions distributed over multiple locations, each location being a data center. There are also 3 main types of cloud computing services: Infrastructure-as-a-Service (IaaS), Platforms-as-a-Service (PaaS), and Software-as-a-Service (SaaS)."
  ),
  Book(
  name: "SEPM Information Technology Project Management",
  author: "Jack Marchewka",
  coverImage: "lib/assets/images/sepm1.jpeg",
  rating: 4.0,
  text: "Information technology (IT) projects are organizational investments. When an organization builds or implements an IT solution, it often commits considerable time, money, and resources to the project with an expectation of receiving something of value in return. To improve the chances of success, you will be introduced to a relatively new discipline called information technology project management (ITPM). Some may argue that managing an IT project is like managing any other project, so all we need to do is apply the processes, tools, and techniques of traditional project management. This may be true to some degree, but a one-size-fits-all approach has not served us all that well in the past. Moreover, building an information system is differentfrom building a house, a bridge, or a rocket for space travel. Although many of the project processes are similar, an entirely different approach to engineering each of these examples is needed. By combining the body of knowledge of modern-day project management with the body of knowledge of management information systems (in particular, software engineering "
  ),
  Book(
  name: "SEPM Software Engineering and Project Mangement",
  author: "Pankaj Brahmankar",
  coverImage: "lib/assets/images/dbms1.jpeg",
  rating: 4.0,
  text: "Information technology (IT) projects are organizational investments. When an organization builds or implements an IT solution, it often commits considerable time, money, and resources to the project with an expectation of receiving something of value in return. To improve the chances of success, you will be introduced to a relatively new discipline called information technology project management (ITPM). Some may argue that managing an IT project is like managing any other project, so all we need to do is apply the processes, tools, and techniques of traditional project management. This may be true to some degree, but a one-size-fits-all approachhas not served us all that well in the past. Moreover, building an information system is different from building a house, a bridge, or a rocket for space travel. Although many of the project processes are similar, an entirely different approach to engineering each of these examples is needed. By combining the body of knowledge of modern-day project management with the body of knowledge of management information systems (in particular, software engineering     ."
  ),
  Book(
  name: "Business Intelligence",
  author: "Cralo Vercellis",
  coverImage: "lib/assets/images/bi1.jpeg",
  rating: 4.0,
  text: "The architecture of a business intelligence system, depicted in Figure 1.2, includes three major components. Data sources. In a first stage, it is necessary to gather and integrate the data stored in the various primary and secondary sources, which are heterogeneous in origin and type. The sources consist for the most part of data belonging to operational systems, but may also include unstructured documents, such as emails and data received from external providers. Generally speaking, a major effort is required to unify and integrate the different data sources, as shown in Chapter 3. Data warehouses and data marts. Using extraction and transformation tools known as extract, transform, load (ETL), the data originating from the different sources are stored in databases intended to support business intelligenceanalyses. These databases are usually referred to as data warehouses and data marts, and they will be the subject of Chapter 3. Business intelligence methodologies. Data are finally extracted and used to feed mathematical models and analysis methodologies intended to support decision makers. In a business intelligence system, several decision support applications may be implemented, most of which will be described in the following chapters."
  ),
  // Book(
  // name: "Data Mining and management”,
  // author: "Dr Arti Deshpande”,
  // coverImage: "lib/assets/images/5.png",
  // rating: 4.0,
  // text: "The architecture of a business intelligence system, depicted in Figure 1.2, includes three major components. Data sources. In a first stage, it is necessary to gather and integrate the data stored in the various primary and secondary sources, which are heterogeneous inorigin and type. The sources consist for the most part of data belonging to opertional systems, but may also include unstructured documents, such as emailsand data received from external providers. Generally speaking, a major effort is required to unify and integrate the different data sources, as shown in Chapter 3. Data warehouses and data marts. Using extraction and transformation tools  known as extract, transform, load (ETL), the data originating from the different sources are stored in databases intended to support business intelligenceanalyses. These databases are usually referred to as data warehouses and data marts, and they will be the subject of Chapter 3. Business intelligence methodologies. Data are finally extracted and used to feed mathematical models and analysis methodologies intended to support decision makers. In a business intelligence system, several decision support applications may be implemented, most of which will be described in the following chapters.”
  // ),
  Book(
  name: "Network Security Assessment",
  author: "Chris McNab",
  coverImage: "lib/assets/images/ns1.jpeg",
  rating: 4.0,
  text: "User Account Enumeration Sendmail and other servers permit mailbox and local user account enumeration. Within Kali Linux, you can use the smtp-user-enum utility to identify accounts through the EXPN, VRFY, and RCPT TO commands. In the following sections, I manually demonstrate each technique.  EXPN  The EXPN command expands details for a given mail address, as shown in Example 9-6. Through  analyzing the server responses, we find the test user account doesn’t exist, mail for root is forwarded to chris@example.org, and an sshd account exists for privilege separation purposes."
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

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => SemesterDetails(
                          title: allBooks[i].name,
                          text:allBooks[i].text,
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
                                  style: GoogleFonts.poppins( color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
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
