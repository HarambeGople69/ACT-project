import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordForm extends StatelessWidget {
  final bool? see;
  final Function? changesee;
  final String? title;
  final Function(String) validator;

  final TextEditingController? controller;

  const PasswordForm({
    Key? key,
    this.see,
    this.changesee,
    this.controller,
    this.title,
    required this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (String? value) => validator(value!),
        style: TextStyle(fontSize: ScreenUtil().setSp(50)),
        controller: controller,
        obscureText: see!,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
          ),
          suffixIcon: InkWell(
              onTap: () {
                changesee!();
              },
              child: !see!
                  ? Icon(
                      Icons.visibility_off,
                      color: Color(
                        0xfffea23b,
                      ),
                      size: ScreenUtil().setSp(80),
                    )
                  : (Icon(
                      Icons.visibility,
                      color: Color(
                        0xfffea23b,
                      ),
                      size: ScreenUtil().setSp(80),
                    ))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          labelText: title,
          // labelStyle: paratext,
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(
              40,
            ),
          ),
        ));
  }
}
