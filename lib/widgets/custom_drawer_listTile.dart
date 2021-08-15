import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerTile extends StatefulWidget {
  final String title;
  final String image;
  final Function function;
  const CustomDrawerTile({
    Key? key,
    required this.title,
    required this.image,
    required this.function,
  }) : super(key: key);

  @override
  _CustomDrawerTileState createState() => _CustomDrawerTileState();
}

class _CustomDrawerTileState extends State<CustomDrawerTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {
            widget.function();
          },
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
        // Divider(),
      ],
    );
  }
}
