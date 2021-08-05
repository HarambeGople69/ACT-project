import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_pdf_display.dart';

class CustomAttachment extends StatefulWidget {
  final String title;
  final String circularFor;
  final String circularAdded;
  const CustomAttachment(
      {Key? key,
      required this.title,
      required this.circularFor,
      required this.circularAdded})
      : super(key: key);

  @override
  _CustomAttachmentState createState() => _CustomAttachmentState();
}

class _CustomAttachmentState extends State<CustomAttachment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(
          5,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(10),
        horizontal: ScreenUtil().setSp(15),
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: BlueinfoStyle),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.circularFor,
                ),
                Text(
                  widget.circularAdded,
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PdfView(path: "images/pdf1.pdf");
                  }));
                },
                icon: Icon(
                  Icons.attach_file,
                ),
                color: Colors.blue[600],
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.more_vert,
              )
            ],
          )
        ],
      ),
    );
  }
}
