import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/demo/pdf/PDFViewerScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ViewPDFFileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIUtils().getAppBar(
          "View PDF File",
          () => Get.back(),
          null,
        ),
        body: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  PDFDocument pdfDocument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        loadFromAsset();
                      },
                      child: Text("Load local PDF"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        loadFromURL();
                      },
                      child: Text("Load PDF via URL"),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  loadFromAsset() async {
    setState(() {
      isLoading = true;
    });
    pdfDocument = await PDFDocument.fromAsset('assets/pdf/Hello.pdf');
    setState(() {
      isLoading = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PDFViewerScreen(
            pdfDocument: pdfDocument,
            time: DateTime.now().millisecondsSinceEpoch),
      ),
    );
  }

  loadFromURL() async {
    setState(() {
      isLoading = true;
    });

    pdfDocument = await PDFDocument.fromURL(Constants.pdfURL);
    setState(() {
      isLoading = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PDFViewerScreen(
            pdfDocument: pdfDocument,
            time: DateTime.now().millisecondsSinceEpoch),
      ),
    );
  }
}
