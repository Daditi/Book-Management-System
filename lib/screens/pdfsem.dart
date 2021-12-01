import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdfsem extends StatefulWidget {
  @override
  _pdfsemState createState() => _pdfsemState();
}

class _pdfsemState extends State<pdfsem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,),
      body:SfPdfViewer.asset('lib/assets/pdf/ccs.pdf',),
    );
  }
}
