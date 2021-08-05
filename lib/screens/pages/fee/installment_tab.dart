import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_sized_height.dart';

class Installment extends StatefulWidget {
  const Installment({Key? key}) : super(key: key);

  @override
  _InstallmentState createState() => _InstallmentState();
}

class _InstallmentState extends State<Installment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(50),
          vertical: ScreenUtil().setSp(50),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Text(
                  "2020-21",
                ),
                Spacer(),
                Icon(Icons.arrow_downward)
              ],
            ),
            OurSizedHeight(),
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total fee",
                  ),
                  Text(
                    "KD 0.000",
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Pay now",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
