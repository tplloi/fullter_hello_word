import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

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
      appBar: UIUtils.getAppBar(
        "PDFViewerScreen" + time.toString(),
        () => Get.back(),
        null,
      ),
      body: Center(child: PDFViewer(document: pdfDocument)),
    );
  }
}