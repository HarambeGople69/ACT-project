import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_sized_height.dart';

class CustomClass extends StatefulWidget {
  final String title;
  final String subject;
  final String date;
  const CustomClass({
    Key? key,
    required this.title,
    required this.subject,
    required this.date,
  }) : super(key: key);

  @override
  _CustomClassState createState() => _CustomClassState();
}

class _CustomClassState extends State<CustomClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: BlueinfoStyle.copyWith(
            fontSize: ScreenUtil().setSp(
              18,
            ),
          ),
        ),
        OurSizedHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.subject,
              style: BlueinfoStyle,
            ),
            Text(
              widget.date,
              style: BlueinfoStyle,
            )
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        OurSizedHeight(),
      ],
    );
  }
}
