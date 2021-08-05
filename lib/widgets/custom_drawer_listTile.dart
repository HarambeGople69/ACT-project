import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerTile extends StatefulWidget {
  final String title;
  final String image;
  const CustomDrawerTile({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _CustomDrawerTileState createState() => _CustomDrawerTileState();
}

class _CustomDrawerTileState extends State<CustomDrawerTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: ScreenUtil().setSp(
              20,
            ),
            backgroundImage: AssetImage(
              widget.image,
            ),
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(
                15,
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
