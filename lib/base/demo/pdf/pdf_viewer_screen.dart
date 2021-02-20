import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class PDFViewerScreen extends StatelessWidget {
  final PDFDocument pdfDocument;
  final int time;

  PDFViewerScreen({
    @required this.pdfDocument,
    @required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "PDFViewerScreen" + time.toString(),
        () => Navigator.pop(context),
      ),
      body: Center(child: PDFViewer(document: pdfDocument)),
    );
  }
}
