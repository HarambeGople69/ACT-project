import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/auth/login_page.dart';
import 'package:myapp/screens/pages/dashboard.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: Size(1080, 1920),
      builder: () => MaterialApp(
        // locale: DevicePreview.locale(context), // Add the locale here
        // builder: DevicePreview.appBuilder,
        // theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: DashBoard(),
      ),
    );
  }
}
