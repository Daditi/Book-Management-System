import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf extends StatelessWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(),
      body: SfPdfViewer.asset("lib/assets/pdf/pa.pdf")
    );

    // SfPdfViewer.network("https://drive.google.com/file/d/1dmKC2R1rC-NQwz0CnME6LFAOc5-6tyc6/view?usp=sharing"),
  }
}
