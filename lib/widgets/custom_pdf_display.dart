import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatelessWidget {
  final String path;
  const PdfView({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Attachment",
        ),
        actions: [
          Icon(
            Icons.share,
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        path,
      ),
    );
  }
}
