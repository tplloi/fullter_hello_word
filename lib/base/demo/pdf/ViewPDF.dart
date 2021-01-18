import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ViewPDF extends StatelessWidget {
  final PDFDocument pdfDocument;

  ViewPDF({
    @required this.pdfDocument,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(child: PDFViewer(document: pdfDocument)),
    );
  }
}
