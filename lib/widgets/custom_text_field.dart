import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String) validator;
  final IconData? icon;
  final TextInputType type;
  final String title;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.validator,
    this.icon,
    required this.title,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? value) => validator(value!),
      style: TextStyle(fontSize: ScreenUtil().setSp(50)),
      keyboardType: type,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          labelText: title,
          // labelStyle: paratext,
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(
              40,
            ),
          )),
    );
  }
}
