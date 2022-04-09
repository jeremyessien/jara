import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/home/home.dart';

import 'presentation/helpers/theme.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jara',
        theme: theme(),
        home: const HomeScreen(),
      ),
    );
  }
}
