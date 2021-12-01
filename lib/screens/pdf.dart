// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pspdfkit_flutter/src/main.dart';
import 'package:pspdfkit_flutter/src/pspdfkit_view.dart';
import 'package:pspdfkit_flutter/src/widgets/pspdfkit_widget.dart';

class pdf extends StatelessWidget {
  const pdf({Key? key}) : super(key: key);
  final String DOCUMENT_PATH = 'lib/assets/pdf/pa.pdf';

  void showDocument(BuildContext context) async {
    final bytes = await DefaultAssetBundle.of(context).load(DOCUMENT_PATH);
    final list = bytes.buffer.asUint8List();

    final tempDir = await Pspdfkit.getTemporaryDirectory();
    final tempDocumentPath = DOCUMENT_PATH;

    // final file = await File(tempDocumentPath).create(recursive: true);
    // file.writeAsBytesSync(list);

    await Pspdfkit.present(tempDocumentPath);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,),
      body:SfPdfViewer.asset('lib/assets/pdf/secret.pdf',),
    );

    // SfPdfViewer.network("https://drive.google.com/file/d/1dmKC2R1rC-NQwz0CnME6LFAOc5-6tyc6/view?usp=sharing"),
  }
}
